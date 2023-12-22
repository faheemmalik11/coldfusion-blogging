component {

    //Properties of Application.cfc
    // Application-wide settings
    this.application = "Test Application"; // Setting a global application name

    // Enable session management
    this.sessionManagement = true; // Allowing the handling of user sessions

    //Events of Application.cfc
    // onApplicationStart function
    function onApplicationStart() {
        // Actions to perform when the application starts
        // Initialize application-wide variables or connect to databases
        // This runs once when the application is first accessed

        //Appication Scope:
        application.someVar = "Some Value"
        //Now i Can access it anywwhere on applicaion
    }

    // onRequestStart function
    function onRequestStart(targetPage) {
        // Actions to perform at the start of each request
        // Typically used for setting up request-specific variables or enforcing security measures
    }

    // onRequest function
    // function onRequest(targetPage) {
    //     // Main processing logic for each request
    //     // Includes the requested page specified by targetPage
    //     // This method is called after onRequestStart and before onRequestEnd
    // }

    // onRequestEnd function
    function onRequestEnd(targetPage) {
        // Actions to perform at the end of each request
        // Typically used for logging, cleanup, or finalization of the request
    }

    // onSessionStart function
    function onSessionStart() {
        // Actions to perform when a new user session is started
        // Initialize session-specific variables or perform setup for the user's session
    }

    // onSessionEnd function
    function onSessionEnd() {
        // Actions to perform when a user session ends
        // Typically used for cleanup tasks, releasing resources, or logging session end
    }

    // onApplicationEnd function
    function onApplicationEnd(ApplicationScope) {
        // Actions to perform when the application ends
        // Cleanup tasks or logging specific to the termination of the entire application
    }

}
