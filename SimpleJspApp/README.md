# Simple JSP Servlet Application

A beginner-friendly Java web application demonstrating JSP and Servlet integration.

## Project Overview

This application demonstrates:
- **Servlet**: `HelloServlet.java` - Handles HTTP GET/POST requests
- **JSP Pages**: Dynamic web pages that render content
- **Request Forwarding**: Servlet forwards requests to JSP for rendering
- **Form Handling**: Process user input and display results
- **Maven Build**: Easy project compilation and packaging

## Project Structure

```
SimpleJspApp/
├── src/
│   └── main/
│       ├── java/com/example/
│       │   └── HelloServlet.java (Main servlet class)
│       ├── webapp/
│       │   ├── WEB-INF/
│       │   │   └── web.xml (Deployment descriptor)
│       │   ├── index.jsp (Home page)
│       │   ├── hello.jsp (Result page)
│       │   └── error.jsp (Error page)
│       └── resources/ (Properties files, configs)
├── pom.xml (Maven configuration)
└── README.md (This file)
```

## Prerequisites

1. **Java JDK 11 or higher**
   - Verify: `java -version`
   - JAVA_HOME environment variable should be set

2. **Maven 3.6+ (Optional, we can use wrapper)**
   - For this project, you can use Maven Wrapper

3. **Application Server**
   - Tomcat 9+ (for running the WAR file)
   - Or use Maven plugin to run directly

## Building the Project

### Option 1: Using Maven (if installed)
```bash
cd SimpleJspApp
mvn clean package
```

### Option 2: Manual Compilation (without Maven)

If Maven isn't installed, compile manually:

```bash
# Navigate to project directory
cd SimpleJspApp

# Compile Java files
javac -d target/classes -cp "src/main/java" src/main/java/com/example/*.java

# Create WAR structure manually
# Copy JSP files to target/SimpleJspApp/
# Copy WEB-INF/ to target/SimpleJspApp/WEB-INF/
# Package as ZIP and rename to .war
```

## Running the Application

### Option 1: Deploy to Tomcat (Recommended)

1. Build the project:
   ```bash
   mvn clean package
   ```

2. Copy the WAR file:
   ```
   target/SimpleJspApp.war → $TOMCAT_HOME/webapps/
   ```

3. Start Tomcat

4. Access the application:
   ```
   http://localhost:8080/SimpleJspApp/
   ```

### Option 2: Using Maven Tomcat Plugin

```bash
mvn tomcat7:run
```

Then visit: `http://localhost:8080/SimpleJspApp/`

### Option 3: Using Jetty Maven Plugin

Add to pom.xml:
```xml
<plugin>
    <groupId>org.eclipse.jetty</groupId>
    <artifactId>jetty-maven-plugin</artifactId>
    <version>9.4.51.v20230217</version>
</plugin>
```

Then run:
```bash
mvn jetty:run
```

## Application Features

### 1. Home Page (`index.jsp`)
- Welcome message
- Project information
- Links to try features

### 2. Servlet (`HelloServlet.java`)
- Maps to `/hello` URL
- Accepts `name` parameter
- Forwards to `hello.jsp` for rendering

### 3. Result Page (`hello.jsp`)
- Displays personalized greeting
- Shows server time
- Form to enter new name
- Responsive design

### 4. Error Handling (`error.jsp`)
- Custom 404 error page
- Link back to home

## URL Mapping

| URL | Description |
|-----|-------------|
| `/SimpleJspApp/` | Home page |
| `/SimpleJspApp/index.jsp` | Home page (direct) |
| `/SimpleJspApp/hello` | Servlet endpoint |
| `/SimpleJspApp/hello?name=John` | Servlet with parameter |
| `/SimpleJspApp/hello.jsp` | Result page (direct) |

## How It Works

1. User accesses `/SimpleJspApp/hello` 
2. `HelloServlet` receives the request
3. Servlet retrieves `name` parameter (default: "Guest")
4. Servlet sets request attributes
5. Servlet forwards to `hello.jsp`
6. JSP renders HTML with server-side data
7. User sees personalized greeting page

## Code Overview

### HelloServlet.java
```java
@WebServlet(name = "helloServlet", urlPatterns = "/hello")
public class HelloServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse res) {
        // Get parameter
        String name = req.getParameter("name");
        // Set attributes
        req.setAttribute("name", name);
        // Forward to JSP
        req.getRequestDispatcher("/hello.jsp").forward(req, res);
    }
}
```

### hello.jsp (JSP)
```jsp
<h2>Hello, <%= name %>!</h2>
<!-- Uses request attributes set by servlet -->
```

## Learning Path

### Next Steps to Enhance This App:

1. **Database Integration**
   - Add JDBC to HelloServlet
   - Store/retrieve names from database

2. **User Authentication**
   - Add login page
   - Session management

3. **Advanced Features**
   - Multiple servlets and JSPs
   - CSS frameworks (Bootstrap)
   - Ajax requests
   - Input validation

4. **Deployment**
   - Deploy to cloud (AWS, Heroku)
   - Use Docker containers

## Troubleshooting

### Issue: JAVA_HOME not found
**Solution:** Set JAVA_HOME environment variable
```bash
set JAVA_HOME=C:\Program Files\Eclipse Adoptium\jdk-21.0.10.7-hotspot
```

### Issue: Maven command not found
**Solution:** Install Maven or use Maven Wrapper

### Issue: Port 8080 already in use
**Solution:** Change Tomcat port in `conf/server.xml`

### Issue: 404 error when accessing servlet
**Solution:** Ensure URL mapping is correct: `/SimpleJspApp/hello`

## Dependencies

The `pom.xml` includes:
- **Servlet API 4.0** - For servlet development
- **JSP API 2.3** - For JSP pages
- **JSTL 1.2** - For JSP tag library

## File Descriptions

| File | Purpose |
|------|---------|
| `pom.xml` | Maven build configuration |
| `HelloServlet.java` | Main servlet handling requests |
| `index.jsp` | Home page |
| `hello.jsp` | Result page |
| `error.jsp` | Error page |
| `web.xml` | Deployment descriptor |

## Resources

- [Apache Tomcat Documentation](https://tomcat.apache.org/)
- [Java Servlet Tutorial](https://docs.oracle.com/javaee/7/tutorial/servlets.html)
- [JSP Tutorial](https://docs.oracle.com/javaee/7/tutorial/jsps.html)
- [Maven Guide](https://maven.apache.org/guides/)

---

Happy coding! 🚀
