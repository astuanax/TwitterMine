var authors = 0;

var webdb = {};
webdb.db = null;

webdb.open = function() {
    var dbSize = 5 * 1024 * 1024; // 5MB
    webdb.db = openDatabase('twitterAccounts', '1.0', 'MEP Twitter accounts', dbSize);
}

webdb.createTable = function() {
    var db = webdb.db;
    db.transaction(function(tx) {
        tx.executeSql("CREATE TABLE IF NOT EXISTS tweets(ID INTEGER PRIMARY KEY ASC, data TEXT)", []);
    });
}

webdb.addTodo = function(twitterData) {
    var db = webdb.db;
    db.transaction(function(tx) {
        var addedOn = new Date();
        tx.executeSql("INSERT INTO tweets(data) VALUES (?)", [twitterData]);
    });
}

if( ! webdb.db){
    webdb.open();
    webdb.createTable();    
}
//var twitterData = "Alexander Alvaro,Freie Demokratische Partei,(Germany),http://twitter.com/#!/AlexAlvaro";
//webdb.addTodo( twitterData );
authors = $("ul.news-list li").length;

console.log( " Authors: ", authors );

function getAuthorInfo(counter) {
    
    $("ul.news-list li:nth(" + counter + ")").click();    
    console.log( "Clicked", $("ul.news-list li:nth(" + counter + ")").html() );
    
    setTimeout( function(){ 
        console.log( $("div.sociallinkbox ul li a.twitter").attr("href"));
        webdb.addTodo( $("div.sociallinkbox ul li a.twitter").attr("href") );
        
        $(".close-button").click(); 
    },10000 );
    
}

function loadIFRAME(counter, authors) { //  create a loop function
    setTimeout(function() {
        
        console.log("Counter: " + counter, "Authors: "+ authors);
        
        if (counter < authors) {    
            setTimeout( function(){getAuthorInfo(counter);}, 10);
            counter++;
            console.log(counter, " IFRAME call")
            loadIFRAME(counter, authors); //  ..  again which will trigger another 
        } else {
                    console.log("Counter: " + counter, "Authoirs: "+authors, "Finished");
        }
    }, 25000, [counter, authors])
}
if (authors > 0) {
    console.log("First IFRAME call")
    loadIFRAME(0, authors);
}
