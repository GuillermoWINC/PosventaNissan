const functions = require("firebase-functions");
const admin = require("firebase-admin");

// Initialize admin
if (!admin.apps.length) {
  admin.initializeApp();
}

exports.resetTaskAll = functions
  .region("europe-central2")
  .https.onCall(async (data, context) => {
    const { taskIDreset } = data;

    if (!taskIDreset) {
      throw new functions.https.HttpsError(
        "invalid-argument",
        "El ID de la tarea es obligatorio",
      );
    }

    const userDoneRef = admin.firestore().collection("userDone");
    const snapshot = await userDoneRef.where("taskID", "==", taskIDreset).get();

    if (snapshot.empty) {
      return {
        success: false,
        message: "No se encontraron registros para la tarea",
      };
    }

    const batch = admin.firestore().batch();

    snapshot.forEach((doc) => {
      batch.update(doc.ref, {
        taskStatus: "Pendiente",
        task_done: false,
        auditResult: null,
        documentationUploaded: [],
        url: "",
        checkDR: false,
      });
    });

    await batch.commit();

    return {
      success: true,
      message: "Estado de la tarea reseteado correctamente",
    };
  });
