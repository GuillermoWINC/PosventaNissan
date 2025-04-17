const admin = require("firebase-admin/app");
admin.initializeApp();

const createNewUserAsAdmin = require("./create_new_user_as_admin.js");
exports.createNewUserAsAdmin = createNewUserAsAdmin.createNewUserAsAdmin;
const createUser = require("./create_user.js");
exports.createUser = createUser.createUser;
const createUserCopy = require("./create_user_copy.js");
exports.createUserCopy = createUserCopy.createUserCopy;
const createUser2 = require("./create_user2.js");
exports.createUser2 = createUser2.createUser2;
const resetTaskAll = require("./reset_task_all.js");
exports.resetTaskAll = resetTaskAll.resetTaskAll;
