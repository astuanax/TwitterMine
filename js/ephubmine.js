var authors = [];

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

webdb.open();
webdb.createTable();
//var twitterData = "Alexander Alvaro,Freie Demokratische Partei,(Germany),http://twitter.com/#!/AlexAlvaro";
//webdb.addTodo( twitterData );
$("table.meps_assistants tr").each(

function() {
    var authorid;
    if ($(this).find("td:nth-child(3) a").attr("href")) {
        authorid = $(this).find("td:nth-child(3) a").attr("href");
        authors.push(authorid);
    }

});
// $("table.meps_assistants tr").each(
// 
// function() {
//     var authorid;
//     
//     alert( $(this + "td a").attr("href") );
// 
//     if ($(this + "td a").attr("href")) {
//         authorid = $(this + "td a").attr("href");
//         alert( $(this + "td a").attr("href") );
//     }
//     if (authorid) {
//         
//        // authors.push(authorid);
//     }
// });
$('<iframe />', {
    name: 'windowId',
    id: 'windowId',
    width: '1200px',
    height: '400px'
}).appendTo('div#header');


//span.ep_country
// "mep_country": "IT",
//li.ep_mail div.email-0 a 
// "mep_emailAddress": "carlo.casini@europarl.europa.eu",
//.ep_img img src
// "mep_epFotoUrl": "http://www.europarl.europa.eu/mepphoto/988.jpg",
//li.ep_website div a href
// "mep_epPageUrl": "http://www.carlocasini.it",

// "mep_facebookId": "316607278678",
//li.ep_facebook div a href
// "mep_facebookPageUrl": "http://www.facebook.com/pages/Carlo-CASINI-Senatore-per-la-VITA/316607278678",
//.ep_europeaninfo .ep_group
// "mep_faction": "PP",
//.ep_noborderbox h1.ep_title
// "mep_firstName": "Carlo",
// "mep_lastName": "Casini",
//.ep_nationalinfo .ep_group
// "mep_localParty": "Unione dei Democratici cristiani e dei Democratici di Centro",
//li.ep_website div a href
// "mep_personalWebsite": "http://www.carlocasini.it",
//li.ep_twitter div a href
// "mep_twitterUrl": "",
// "mep_userId": "12198",
// "mep_additionalProperties": "[{\"Substitute\":\"Committee on Foreign Affairs\"},{\"Member of the Bureau\":\"Group of the European People\u0027s Party (Christian Democrats)\"},{\"Member\":\"European Parliament\"},{\"Chair\":\"Committee on Constitutional Affairs\"}]",
// "mep_itemCount": 0

function getAuthorInfo() {
    var t = setInterval(function() {

        if ($("#windowId").contents().ready() ) {
            var authorinfo = '{';

            authorinfo = authorinfo + "\"mep_country\": \"" + $("#windowId").contents().find("span.ep_country").text() + "\",";
            authorinfo = authorinfo + "\"mep_emailAddress\": \"" + $("#windowId").contents().find("li.ep_mail div.email-0 a").text() + "\",";
            authorinfo = authorinfo + "\"mep_epFotoUrl\": \"" + $("#windowId").contents().find(".ep_img img").attr('src') + "\",";
            authorinfo = authorinfo + "\"mep_epPageUrl\": \"" + $("#windowId").contents().find("li.ep_website div a").attr('href') + "\",";
            authorinfo = authorinfo + "\"mep_facebookPageUrl\": \"" + $("#windowId").contents().find("li.ep_facebook div a").attr('href') + "\",";
            authorinfo = authorinfo + "\"mep_faction\": \"" + $("#windowId").contents().find(".ep_europeaninfo .ep_group").text() + "\",";
            authorinfo = authorinfo + "\"mep_firstName\": \"" + $("#windowId").contents().find(".ep_noborderbox h1.ep_title").text().split(' ')[0] + "\",";
            authorinfo = authorinfo + "\"mep_lastName\": \"" + $("#windowId").contents().find(".ep_noborderbox h1.ep_title").text().split(' ')[1] + "\",";
            authorinfo = authorinfo + "\"mep_localParty\": \"" + $("#windowId").contents().find(".ep_nationalinfo .ep_group").text() + "\",";
            authorinfo = authorinfo + "\"mep_personalWebsite\": \"" + $("#windowId").contents().find("li.ep_website div a").attr('href') + "\",";
            authorinfo = authorinfo + "\"mep_twitterUrl\": \"" + $("#windowId").contents().find("li.ep_twitter div a").attr('href') + "\"}";

            webdb.addTodo(authorinfo);

            authorinfo = '';
            clearInterval(t);
        } else {
            // console.log("repeating myself");
            getAuthorInfo();
        }
    }, 1000);


}

function loadIFRAME(counter, authors) { //  create a loop function
    setTimeout(function() { //  call a 3s setTimeout when the loop is called
        if (counter < authors.length) {
            windowUrl = 'http://www.europarl.europa.eu' + authors[counter];

            $("iframe#windowId").attr('src', windowUrl);

            // console.log("iframe url: ", windowUrl, "counter: ", counter, "authors: ", authors);
            // setTimeout(function() {
            //     $("#windowId ").contents().find("li.source-twitter:eq(1) span.author").click();
            // }, 20000);
            setTimeout('getAuthorInfo()', 15000);
            counter++;
            loadIFRAME(counter, authors); //  ..  again which will trigger another 
        } else {
            console.log("Finished");
        }
    }, 20000, [authors, counter])
}
if (authors.length > 0) {
    loadIFRAME(0, authors);
}
