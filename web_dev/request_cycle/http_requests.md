# Release 0
1. What are some common HTTP status codes?
    - HTTP ERROR 500
        + Internal Service Error
        + A general purpose error message indicating that the server
          has encountered some internal error.
    - HTTP ERROR 404
        + Not Found
        + Trying to access a resource on a web server that does not
          exist.
    - HTTP ERROR 403
        + Forbidden
        + Similar to a 401, but in this case, no login was available.
        + That is you should not be able to access this page under
          any circumstances.
    - HTTP ERROR 400
        + Bad Request
        + Web server telling you that the resource has been accessed
          incorrectly or has been corrupted.
    - HTTP ERROR 401
        + Unauthorized
        + Error that shows up when there is a failed login attempt on
          a restricted web page.
2. What is the difference between a GET request and a POST request? When
   might each be used?

   GET
    - Can send limited amounts of data because data is in header.
    - Not secured because data is exposed in URL bar.
    - Can be bookmarked.
    - Is `idempotent`. Means that second request will be ignored until first
      is fulfilled.
    - Is more efficient and used more.
   POST
    - Large amounts of data can be sent.
    - Secured because data is not exposed in URL bar.
    - Cannot be bookmarked.
    - Non-idempotent.
    - Less efficient and used less.
   
   The main reasons to use each of these methods is that GET is used to request
   data from a specific resource, while POST is generally used to submit data
   to that resource.

3. What is a cookie? How does it relate to HTTP requests?
    Cookies at the basic level are bits of data that are sent from a website to a user's browser to keep track of the things you do on the webpage.
    There are other types of cookies like authentication cookies that are used for security purposes. Such as knowing that the user who has logged in is allowed to view the sensitive information on the website.

    There are also tracking cookies, which are used to construct a long term usage history of the user.