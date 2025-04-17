const functions = require("firebase-functions");
const admin = require("firebase-admin");

exports.createUser = functions.https.onCall(async (data, _context) => {
  // Destructure data with default values or null checks
  const {
    emailAddress,
    password,
    company,
    category,
    role,
    auditor,
    aspm,
    displayName,
    // add more fields as required
  } = data || {};

  // Validar que los campos obligatorios estén presentes
  if (!emailAddress || !password) {
    return {
      status: "error",
      code: "missing-fields",
      message: "Email and password are required.",
    };
  }

  try {
    // Create a user in Firebase Authentication
    const userRecord = await admin.auth().createUser({
      email: emailAddress,
      password: password,
    });

    // Get the UID of the newly created user
    const uid = userRecord.uid;

    // Get a reference to the 'users' collection in Firestore
    const usersRef = admin.firestore().collection("users");

    // Create a new user document with the provided fields
    await usersRef.doc(uid).set({
      email: emailAddress || "", // Provide a default value or handle null case
      company: company || "",
      category: category || "",
      role: role || "",
      display_name: displayName || "",
      auditor: auditor || "",
      aspm: aspm || "",
      // add more fields as required
    });

    return {
      status: "success",
      message: "User created successfully.",
    }; // Return success message upon successful creation
  } catch (error) {
    console.error("Error creating new user:", error);
    return {
      status: "error",
      code: error.code,
      message: error.message,
    }; // Return the error code and message if user creation fails
  }
});
