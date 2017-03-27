var lock = new Auth0Lock(
  'YuL0bHtYJ7HqefHRzbzcMFKe2JIg9UUp',
  'charley.eu.auth0.com'
);

// Listening for the authenticated event
lock.on("authenticated", function(authResult) {
  // Use the token in authResult to getUserInfo() and save it to localStorage
  lock.getUserInfo(authResult.accessToken, function(error, profile) {
    if (error) {
      // Handle error
      return;
    }

    localStorage.setItem('accessToken', authResult.accessToken);
    localStorage.setItem('profile', JSON.stringify(profile));
  });
});