<!DOCTYPE html>

<html>

<head>
    <meta name="layout" content="main"/> 
    <meta charset="UTF-8" />

    <title>Reading Book List</title>

    <link rel="stylesheet" href="/assets/main.css?compile=false" />
    <link rel="stylesheet" href="/assets/mobile.css?compile=false" />
    <link rel="stylesheet" href="/assets/application.css?compile=false" />
</head>

<body>

    <br/>
    
    <div class="container">

    <div class="panel panel-primary">
    
    <div class="panel-heading">Your Reading Book List</div>
    
    <div class="panel-body">

    <h2 class="text-primary"></h2>

    <g:if test="${bookList && !bookList.isEmpty()}">
    
        <g:each in="${bookList}" var="book">
            <dl>
                <dt class="text-info">
                    <span>${book.title}</span> by ${book.author}
                    (ISBN: ${book.isbn})
                </dt>
                
                <br/>

                <dd class="text-success">
                    <g:if test="${book.description}">
                        description : ${book.description} &nbsp;  Price : ${book.price}
                    </g:if>

                    <g:else>
                        No Description available
                    </g:else>
                </dd>
                
                <br/>
            </dl>
        </g:each>
    </g:if>

    <g:else>
        <p class="text-danger">You have no books in your book list</p>
    </g:else>
    
     </div>
      </div>
   

    <br/>

      <div class="panel panel-success">
    
    <div class="panel-heading">Add a Book</div>
    
    <div class="panel-body">
    
    <g:form action="save">
        <fieldset class="form">
            <label for="title" class="text-primary">Title:</label>
            <g:field type="text" name="title" value="${book?.title}" /><br />

            <label for="author" class="text-primary">Author:</label>
            <g:field type="text" name="author" value="${book?.author}" /><br />

            <label for="isbn" class="text-primary">ISBN:</label>
            <g:field type="text" name="isbn" value="${book?.isbn}" /><br />
            
            <label for="price" class="text-primary">Price:</label>
            <g:field type="text" name="price" value="${book?.price}" /><br />

            <label for="description" class="text-primary">Description:</label><br />
            <g:textArea name="description" value="${book?.description}" rows="5" cols="80" />
        </fieldset>

        <fieldset>
            <g:submitButton name="create" class="save" 
            value="${message(code: 'default.button.create.label', default: 'Create')}" 
             class="btn btn-danger btn-lg"/>
        </fieldset>
    </g:form>
    
      </div>
      </div>
    
     </div>
    
</body>

</html>