/*
 * Script for index.html
 * Required by scripts.js
 */

// Force Strict Mode
"use strict";

/*
 * This is the Constructor function for creating a User Object
 * 
 * @param id - id generated by DB INSERT 
 * @param userName
 * @param email 
 * @param isAdmin - boolean
 */
function User(id, userName, email, password, isAdmin) {
    // Properties 
    this.id = id;
    this.userName = userName;
    this.email = email;
    this.password = password;
    this.isAdmin = isAdmin;

    // Behaviors
    this.getId = () => {
        return this.id;
    };
    this.getUserName = () => {
        return this.userName;
    };
    this.getEmail = () => {
        return this.email;
    }
    this.getPassword = () => {
        return this.password;
    }
    this.getIsAdmin = () => {
        return this.isAdmin;
    }
}

// Create Prototype function
User.prototype.getUser = function() {
    return `{id: ${this.getId()}, username, ${this.getUserName()}, email, ${this.getEmail()}, password, ${this.getPassword()}, isAdmin, ${this.getIsAdmin()}}`;
}