
data = "";
/* 	isChecked = 0; */
newId = '';
newTitle = "";
newDescription = "";
newAuthor = "";
newISBN = "";
newPrintYear = "0";
newReadAlready = '0';

constAuthor = "";

function myFunction() {
    var input, filter, table, tr, td, i;
    input = document.getElementById("by_name");
    filter = input.value.toUpperCase();
    table = document.getElementById("table");
    tr = table.getElementsByTagName("tr");
    for (i = 0; i < tr.length; i++) {
        td = tr[i].getElementsByTagName("td")[1];
        if (td) {
            if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                tr[i].style.display = "";
            } else {
                tr[i].style.display = "none";
            }
        }
    }
}
function myFunction1() {
    var input, filter, table, tr, td, i;
    input = document.getElementById("by_name1");
    filter = input.value.toUpperCase();
    table = document.getElementById("table");
    tr = table.getElementsByTagName("tr");
    for (i = 0; i < tr.length; i++) {
        td = tr[i].getElementsByTagName("td")[2];
        if (td) {
            if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                tr[i].style.display = "";
            } else {
                tr[i].style.display = "none";
            }
        }
    }
}
function myFunction2() {
    var input, filter, table, tr, td, i;
    input = document.getElementById("by_name2");
    filter = input.value.toUpperCase();
    table = document.getElementById("table");
    tr = table.getElementsByTagName("tr");
    for (i = 0; i < tr.length; i++) {
        td = tr[i].getElementsByTagName("td")[3];
        if (td) {
            if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                tr[i].style.display = "";
            } else {
                tr[i].style.display = "none";
            }
        }
    }
}
function myFunction3() {
    var input, filter, table, tr, td, i;
    input = document.getElementById("by_name3");
    filter = input.value.toUpperCase();
    table = document.getElementById("table");
    tr = table.getElementsByTagName("tr");
    for (i = 0; i < tr.length; i++) {
        td = tr[i].getElementsByTagName("td")[4];
        if (td) {
            if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                tr[i].style.display = "";
            } else {
                tr[i].style.display = "none";
            }
        }
    }
}
function myFunction4() {
    var input, filter, table, tr, td, i;
    input = document.getElementById("by_name4");
    filter = input.value.toUpperCase();
    table = document.getElementById("table");
    tr = table.getElementsByTagName("tr");
    for (i = 0; i < tr.length; i++) {
        td = tr[i].getElementsByTagName("td")[5];
        if (td) {
            if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                tr[i].style.display = "";
            } else {
                tr[i].style.display = "none";
            }
        }
    }
}
function myFunction5() {
    var input, filter, table, tr, td, i;
    input = document.getElementById("by_name5");
    filter = input.value.toUpperCase();
    table = document.getElementById("table");
    tr = table.getElementsByTagName("tr");
    for (i = 0; i < tr.length; i++) {
        td = tr[i].getElementsByTagName("td")[6];
        if (td) {
            if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                tr[i].style.display = "";
            } else {
                tr[i].style.display = "none";
            }
        }
    }
}

submit = function(){


    var c = document.querySelector('#readAlready');
    /* 		if(c.checked){
                isChecked = 1;
            } */

    if($('#id').val() == '') {
        $.ajax({
            url:'saveOrUpdate',
            type:'POST',

            data:{
                title:$('#title').val(),
                description:$('#description').val(),
                author:$('#author').val(),
                isbn:$('#isbn').val(),
                printYear:$('#printYear').val(),
                readAlready:0
            },
            success: function(response){
                alert(response.message);
                load('list');
            }
        });
    }
    else{
        if(c.checked){
            $.ajax({
                url:'saveOrUpdate',
                type:'POST',

                data:{
                    id:$('#id').val(),
                    title:newTitle,
                    description:newDescription,
                    author:newAuthor,
                    isbn:newISBN,
                    printYear:newPrintYear,
                    readAlready:1
                },
                success: function(response){
                    alert(response.message);
                    load('list');
                }
            });
        }
        else{
            $.ajax({
                url:'saveOrUpdate',
                type:'POST',

                data:{
                    id:$('#id').val(),
                    title:$('#title').val(),
                    description:$('#description').val(),
                    author:newAuthor,
                    isbn:$('#isbn').val(),
                    printYear:$('#printYear').val(),
                    readAlready:0
                },
                success: function(response){
                    alert(response.message);
                    load('list');
                }
            });
        }
    }

}

delete_ = function(id){
    $.ajax({
        url:'delete',
        type:'POST',
        data:{id:id},
        success: function(response){
            alert(response.message);
            load('list');
        }
    });
}

edit = function (index){
    trueAdmin = 0;
    var c = document.querySelector('#readAlready');

    newId = data[index].id;

    if(c.checked){
        newTitle = "";
        newDescription = "";
        newAuthor = "";
        newISBN = "";
        newPrintYear = "";
        newReadAlready = 1;
    }
    else{
        newTitle = data[index].title;
        newDescription = data[index].description;
        newAuthor = data[index].author;
        newISBN = data[index].isbn;
        newPrintYear = data[index].printYear;
        newReadAlready = data[index].readAlready;
    }

    $("#id").val(newId);
    $("#title").val(newTitle);
    $("#description").val(newDescription);
    $("#author").val(newAuthor);
    $("#isbn").val(newISBN);
    $("#printYear").val(newPrintYear);
    $("#readAlready").val(newReadAlready);
}

load = function(nameList){
        sort = '';
        if(nameList == 'search'){
            sort = $('#by_name').val();
            location.reload();
        }

        $.ajax({
            url:nameList,
            type:'POST',
            data:{title:sort},
            success: function(response){
                data = response.data;
                $('.tr').remove();
                for(i=0; i<response.data.length; i++){
                    $("#table").append(
                        "<tr class='tr'> <td> "+
                        response.data[i].id+
                        " </td> <td> "+
                        response.data[i].title+
                        " </td> <td> "+
                        response.data[i].description+
                        " </td> <td> "+
                        response.data[i].author+
                        " </td> <td> "+
                        response.data[i].isbn+
                        " </td> <td> "+
                        response.data[i].printYear+
                        " </td> <td> "+
                        response.data[i].readAlready+
                        " </td> <td> <a href='#' onclick= edit("+i+");> Edit </a>  </td> </td> <td> <a href='#' onclick='delete_("+
                        response.data[i].id+");'> Delete </a>  </td> </tr>");
                }
            }
        });
    }

