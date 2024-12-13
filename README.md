Title
Nothin’But’Net

General Description
At Nothin’But Net, we are dedicated and passionate about our customers and members as we look to bring high-quality apparel and gear. Whether you want to look good on and off the court, we got you covered.

Table of Contents
Importations and useful information
Backend Logic and Classes
HTML Structure for Display
Security Protocols and Measures



Importations
When you install, please be sure to import the database file which is nothin_butnet.sql and the database name that I have on the application of properties is nothin’butnet. There is not a set password for the user, when a user is making their account, they can use any password that they would like to choose and they will need to use that same password after they are prompted to the login page as it’s where they are directed to after they sign up on the website.

Backend Logic and Classes
In the backend of the Spring Boot application, the core logic is implemented through various Java classes, which interact with the database, handle business processes, and manage the flow of data. In our case we have Customer, CustomerService, CustomerRepository, and CustomerController. Customer related classes handle things such as adding a new Customer, allowing the customer to update their information after signing up. We also have Product, ProductController, productService, ProductRepository which have the same logic as the customer classes except that it deals with the product side of things instead of customers. General Controller is the class where I am connecting pages such as log in, contact, help center, and homepage to other htmls that take in form action or are dependent on the form action.
HTML Structure for Display
The HTML structure for display in a Spring Boot application is typically used to create the front-end interface that interacts with the backend. The HTML files are stored in the src/main/resources/templates directory and can be populated with model attributes passed from controller methods. For the htmls side of things, we have customer-create which allows users to input their credentials as it’s critical for them to sign up. Customer-details is where the customer is redirected to in order for them to see the information that they imputed and they can update it through the customer-update page. For the product page, we have the product-type which allows the user to see the different categories that we have which are mens, womens, kids, retro. 
Security Protocols and Measures
Security is also implemented and it’s set in a way so that our user cannot see the product details which includes but not limited to items such as size and product name until they are logged in as it’s when they get the chance to order and for security reasons, we want our users to place an order only when they are logged in. To make the log in possible, we are using SecurityConfig and CustomUserDetailsservice. CustomUserDetailsService makes it possible to implement UserDetailsService. From there, we will be able  to use the connection to the database to access our saved users using their usernames and passwords. In the User repo, we implement a method which will help us find a user/customer by their username. As for security config, The SecurityConfig class in Spring Boot manages the security settings and access control for the application. Marked with @Configuration and @EnableWebSecurity, it sets up a filter chain to define authorization rules, such as restricting access to resources starting with /CUSTOMER or /ADMIN to users with the appropriate roles, while requiring authentication for all other requests. It also configures login options, establishes an exception handler that redirects unauthorized users to a /403 page, and allows everyone to log out. Furthermore, it configures an AuthenticationManager using BCryptPasswordEncoder and a UserDetailsService to enforce security policies, ensuring that passwords are stored securely and never in plain text.

When it comes to how it operates frontend wise, the home page is accessible to the user without them needing to log in and the product categories are also available without loggin in. The user will need to be logged to see the product details and the best way to reach that would be the click on a product. Once they click on the product, there is an option where they can choose the size that they are looking for and once they click buy now, it will prompt them to a page where we thank them for shopping with us. Once an user logs in, they will see all their informations and if they click on help, they will see a page on the nav bar that says my account and that will prompt them to see the credentials they previously filled out when they signed up.
