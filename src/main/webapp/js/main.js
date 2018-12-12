 
 class Course { 
        constructor (id,titre,libele) {
                this.id = id;
                this.libele = libele;
                this.titre = titre;              
        }
}

var formations  = [] ;

var contenCourHTML = "";

loadCourse();

function  loadAll()  {
         formations = [];
         $.ajax({ 
                url: 'formation', 
                dataType: 'json', 
                data: { get_param: 'value' }, 
                async: false, 
                success: function(data){ 
                        data.forEach(element => {
                                course = new Course(element.id_course,element.title,element.libelle)
                                formations.push(course);                
                        }); 
                } 
            });
}

function  loadCourseByName(text)  {
        formations = [];
        $.ajax({ 
               url: 'bytitle/'+text, 
               dataType: 'json', 
               async: false, 
               success: function(data){ 
                       data.forEach(element => {
                               course = new Course(element.id_course,element.title,element.libelle)
                               formations.push(course);                
                       });  
                       console.log('send');      
               } 
           });
}

function loadCourse(){
        loadAll();
        //console.log(formations);
        renderList();
}

$( function() {

        $("#search").click(function(){
                if($("#navInput").val() == '')
                loadCourse();
                else
                loadCourseByName($("#navInput").val());
                console.log(formations);
                renderList();
});

});

function renderList(){
        contenCourHTML = "";
        var id = $("#contentCours");
        id.html("");
        formations.forEach(element => {            
                contenCourHTML += '<div class="card w-75" id="cours">'; 
                contenCourHTML +='<div class="card-body">';
                contenCourHTML+='<h5 class="card-title">'+element.titre+'</h5>';
                contenCourHTML+= '<p class="card-text">'+element.libele+'</p>';
                contenCourHTML+='<div id="btn"><a href="#!" class="btn btn-primary">Sinscrire</a></div>';
                contenCourHTML+='</div></div>';
                });

        id.html(contenCourHTML);
}


      


