const functions = require('firebase-functions');
const admin = require('firebase-admin');
// To avoid deployment errors, do not call admin.initializeApp() in your code

exports.createUser2 = functions.region('europe-central2').https.onCall(
  (data, context) => {
    // Write your code below!


  // Destructure data with default values or null checks
  const {
    emailAddress,
    password
    // add more fields as required
  } = data || {};

  // Validar que los campos obligatorios estén presentes
  if (!emailAddress || !password) {
    return {
      status: 'error',
      code: 'missing-fields',
      message: 'Email and password are required.'
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
    const usersRef = admin.firestore().collection('users');

    // Create a new user document with the provided fields
    await usersRef.doc(uid).set({
      email: emailAddress || '', // Provide a default value or handle null case
      // add more fields as required
    });

    return {
      status: 'success',
      message: 'User created successfully.'
    }; // Return success message upon successful creation
  } catch (error) {
    console.error('Error creating new user:', error);
    return {
      status: 'error',
      code: error.code,
      message: error.message
    }; // Return the error code and message if user creation fails
  }

    // Write your code above!
  }
);