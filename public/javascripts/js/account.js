//alert('there');
function drawTables() {
    drawTableBooksCreated();
    drawTableContributions();
}

// Draw table from 'jsBooksCreated' array of objects
function drawTableBooksCreated() {
    var tr, td, alt;
    alt = true;
    tbody = document.createElement("tbody");
    // loop through data source
    for (var i = 0; i < jsBooksCreated.length; i++) {
        alt = !alt;
        tr = tbody.insertRow(tbody.rows.length);
        if (alt) {tr.setAttribute("class", "alternate")}
        td = tr.insertCell(tr.cells.length);
        //td.setAttribute("align", "center");
        td.innerHTML = jsBooksCreated[i].modified;
        td = tr.insertCell(tr.cells.length);
        td.innerHTML = '<a href="/books/'
          + jsBooksCreated[i].id
          + '/manage">'
          + jsBooksCreated[i].title
          + '</a>';
        td = tr.insertCell(tr.cells.length);
        td.innerHTML = jsBooksCreated[i].status;
        td = tr.insertCell(tr.cells.length);
        td.innerHTML = '<a href="/books/'
          + jsBooksCreated[i].id
          + '">'
          + jsBooksCreated[i].num_contributions
          + '</a>';
        //td = tr.insertCell(tr.cells.length);
        //td.setAttribute("align", "center");
        //td.innerHTML = jsBooksCreated[i].winScore + " - " + jsBooksCreated[i].losScore;
    }
    old_tbody = document.getElementById("tbodyBooksCreated");
    replaceTbody(tbody, old_tbody);
}

// Draw table from 'jsContributions' array of objects
function drawTableContributions() {
    var tr, td, alt, book_id;
    alt = true;
    tbody = document.getElementById('tbodyContributions');
    // remove existing rows, if any
    clearTable(tbody);
    // loop through data source
    for (var i = 0; i < jsContributions.length; i++) {
        alt = !alt;
        tr = tbody.insertRow(tbody.rows.length);
        if (alt) {tr.setAttribute("class", "alternate")}
        td = tr.insertCell(tr.cells.length);
        td.innerHTML = jsContributions[i].contributed;
        td = tr.insertCell(tr.cells.length);
        td.innerHTML = jsContributions[i].title;
        td = tr.insertCell(tr.cells.length);
	//'<div align="center"><a href="contribute.html">Make Contr...</a></div>'
        td.setAttribute("align", "center");
        td.innerHTML = '<a href="/contributions/'
	    + jsContributions[i].contr_id
	    + '">Edit &raquo;</a>';
        td = tr.insertCell(tr.cells.length);
        td.innerHTML = jsContributions[i].status;
        td = tr.insertCell(tr.cells.length);
        td.setAttribute("align", "center");
        td.setAttribute("class", "center");
        td.innerHTML = 'Book|PDF';
   }
}

// Replace old tbody with new, assuming there
// is only one in the list of tbodies for the its table.
function replaceTbody(newt, oldt) {
  var theTable = oldt.parentNode;
  var df = document.createDocumentFragment();
  var id = oldt.id;
  //alert("Replace id:" + id);
  //oldt.id = 'random';
  newt.id = id;
  df.appendChild(newt);
  theTable.replaceChild(df, oldt)
}

// Remove existing table rows
function clearTable(tbody) {
    while (tbody.rows.length > 0) {
        tbody.deleteRow(0);
    }
}

// Sort func dispatch (via by table column links)
function sortBooksCreated(func) {
  if (jsSortReversed) {
    jsBooksCreated.sort(function(a,b){return func(b,a)});
  } else {
    jsBooksCreated.sort(func);
  }
  jsSortReversed = !jsSortReversed;
  setTimeout(function(){drawTableBooksCreated();}, 0);
  //drawTableBooksCreated()
  return false
}

// Sort func dispatch (via by table column links)
function sortContributions(func) {
  if (jsSortReversed) {
    jsContributions.sort(function(a,b){return func(b,a)});
  } else {
    jsContributions.sort(func);
  }
  jsSortReversed = !jsSortReversed;
  drawTableContributions()
  return false
}

function byModified(a, b) {
    return a.modified - b.modified;
}
function byTitle(a, b) {
    a = a.title.toLowerCase();
    b = b.title.toLowerCase();
    return ((a < b) ? -1 : ((a > b) ? 1 : 0));
}
function byStatus(a, b) {
  a = a.status;
  b = b.status;
  return ((a < b) ? -1 : ((a > b) ? 1 : 0));
}
function byContributed(a, b) {
    return a.contributed - b.contributed;
}

function sortByValue(a, b) {
    return b.Value - a.Value;
}
