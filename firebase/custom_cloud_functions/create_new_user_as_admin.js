const functions = require("firebase-functions");
const admin = require("firebase-admin");
admin.initializeApp();

const { getAuth } = require("firebase-admin/auth");

exports.createNewUserAsAdmin = functions
  .region("europe-central2")
  .runWith({
    memory: "128MB",
  })
  .https.onCall(async (data, context) => {
    if (!context.auth) {
      return {
        status: "error",
        code: 401,
        message: "No estás autenticado",
        success: false,
      };
    }

    const newInputEmail = data.newInputEmail;
    const newInputPassword = data.newInputPassword;
    const newInputRole = data.newInputRole;

    // Validar los datos del usuario
    if (!data.newInputEmail || !data.newInputPassword) {
      throw new functions.https.HttpsError(
        "invalid-argument",
        "Missing email or password",
      );
    }

    try {
      console.log(context.auth.uid);

      const db = admin.firestore();
      const userRef = db.collection("users");
      const currentUserSnapshot = await userRef.doc(context.auth.uid).get();
      const currentUser = currentUserSnapshot.data();

      if (!currentUser || currentUser.role !== "NIBSA") {
        return {
          status: "error",
          code: 401,
          message: "No estás autorizado a crear nuevos usuarios",
          success: false,
        };
      }

      // Crear usuario autenticado en la pestaña de auth de Firebase
      const newUser = await getAuth().createUser({
        email: newInputEmail,
        password: newInputPassword,
        // Otros campos opcionales
      });

      // Crear documento en Firestore
      if (newUser) {
        await userRef.doc(newUser.uid).set({
          email: newUser.email,
          uid: newUser.uid,
          role: newInputRole, // Guardar el rol del nuevo usuario en Firestore
        });
      }

      return {
        status: "ok",
        code: 200,
        message: "Usuario creado correctamente",
        success: true,
      };
    } catch (error) {
      console.error("Error al crear un nuevo usuario:", error);
      return {
        status: "error",
        code: 500,
        message: `Error: ${error.message}`,
        success: false,
      };
    }
  });
