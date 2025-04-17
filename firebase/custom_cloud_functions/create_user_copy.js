const functions = require("firebase-functions");
const admin = require("firebase-admin");

exports.createUserCopy = functions.https.onCall(async (data, _context) => {
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

  try {
    // Create a user in Firebase Authentication
    const userRecord = await admin.auth().createUser({
      email: emailAddress || "", // Provide a default value or handle null case
      password: password || "",
    });

    // Get the UID of the newly created user
    const uid = userRecord.uid;

    // Get a reference to the 'users' collection in Firestore
    const usersRef = admin.firestore().collection("users");

    // Create a new user document with the provided fields
    await usersRef.doc(uid).set({
      uid: uid,
      email: emailAddress || "", // Provide a default value or handle null case
      company: company || "",
      category: category || "",
      role: role || "",
      display_name: displayName || "",
      auditor: auditor || "",
      aspm: aspm || "",
      // add more fields as required
    });

    return "Valid"; // Return 'Valid' upon successful creation
  } catch (error) {
    return error.code; // Return the error code if user creation fails
  }
});
