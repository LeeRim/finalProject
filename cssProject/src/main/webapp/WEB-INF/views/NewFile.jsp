<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
ul.checktree, ul.checktree ul {
 list-style-type: none;
 padding: 0;
 margin: 0;
 font: 10px sans-serif;
}

ul.checktree li {
 background: url(http://www.blueb.co.kr/SRC/javascript/image3/node.gif) no-repeat;
 margin: 0;
 padding: 0 0 0 16px;
 cursor: default;
}
ul.checktree li.last {
 background-image: url(http://www.blueb.co.kr/SRC/javascript/image3/node-last.gif);
}
ul.checktree li.plus {
 background-image: url(http://www.blueb.co.kr/SRC/javascript/image3/plus.gif);
}
ul.checktree li.plus-last {
 background-image: url(http://www.blueb.co.kr/SRC/javascript/image3/plus-last.gif);
}
ul.checktree li.minus {
 background-image: url(http://www.blueb.co.kr/SRC/javascript/image3/minus.gif);
}
ul.checktree li.minus-last {
 background-image: url(http://www.blueb.co.kr/SRC/javascript/image3/minus-last.gif);
}

ul.checktree span.count {
 text-indent: 5pt;
 color: #999;
 font-style: italic;
}
</style>
<script type="text/javascript">
function CheckTree(myName) {
	this.myName = myName;
	this.root = null;
	this.countAllLevels = false;
	this.checkFormat = '(%n% checked)';
	this.evtProcessed = navigator.userAgent.indexOf('Safari') > -1 ? 'safRtnVal' : 'returnValue';
		 CheckTree.list[myName] = this;
};
CheckTree.list = [];


// Called onload, this sets up a reference to the 'root' node and hides sublevels.
CheckTree.prototype.init = function() { with (this)
{
 if (!document.getElementById) return;
 root = document.getElementById('tree-' + myName);
 if (root)
 {
  var lists = root.getElementsByTagName('ul');
  for (var ul = 0; ul < lists.length; ul++)
  {
   // Hide all UL sublevels under the root node, and assign them a toggle/click methods.
   lists[ul].style.display = 'none';
   lists[ul].treeObj = this;
   lists[ul].setBoxStates = setBoxStates;

   var fn = new Function('e', 'this.setBoxStates(e)');
   // Grr, workaronud another Safari bug.
   if (lists[ul].addEventListener && navigator.vendor != 'Apple Computer, Inc.')
   {
    lists[ul].addEventListener('click', fn, false);
   }
   else lists[ul].onclick = fn;
  }

  // Now do a similar event capture setup for the 'root' node.
  root.treeObj = this;
  root.setBoxStates = setBoxStates;
  if (root.addEventListener && navigator.vendor != 'Apple Computer, Inc.')
  {
   root.addEventListener('click', new Function('e', myName + '.click(e)'), false);
  }
  else root.onclick = new Function('e', myName + '.click(e)');
  // Trigger a quick state update, to set the counters for each level.
  root.setBoxStates({}, true, true);

  // Now go through and assign plus/plus-last classes to the appropriate <LI>s.
  var nodes = root.getElementsByTagName('li');
  for (var li = 0; li < nodes.length; li++)
  {
   if (nodes[li].id.match(/^show-/))
   {
    nodes[li].className = (nodes[li].className=='last' ? 'plus-last' : 'plus');
   }
  }
 }
}};


// Called on click of the entire tree, this manages visibility of sublevels.
CheckTree.prototype.click = function(e) { with (this)
{
 e = e || window.event;
 var elm = e.srcElement || e.target;

 // Has a checkbox been clicked, but not processed by a lower level onclick event?
 // If so, one of the 'root' checkboxes must have been clicked.
 // We must therefore trigger a manual 'downwards route' for that tree to update it.
 if (!e[evtProcessed] && elm.id && elm.id.match(/^check-(.*)/))
 {
  var tree = document.getElementById('tree-' + RegExp.$1);
  if (tree) tree.setBoxStates(e, true, false);
 }

 while (elm)
 {
  // Dont' do expand/collapses for clicks on checkboxes, or nested within menus.
  if (elm.tagName.match(/^(input|ul)/i)) break;
  // Show/hide the menu element that matches the source id="show-xxx" tag and quit.
  if (elm.id && elm.id.match(/^show-(.*)/))
  {
   var targ = document.getElementById('tree-' + RegExp.$1);
   if (targ.style)
   {
    var col = (targ.style.display == 'none');
    targ.style.display = col ? 'block' : 'none';
    // Swap the class of the <span> tag inside, maintaining "-last" state if applied.
    elm.className = elm.className.replace(col?'plus':'minus', col?'minus':'plus');
   }
   break;
  }
  // Otherwise, continue looping up the DOM tree, looking for a match.
  elm = elm.parentNode;
 }
}};

function setBoxStates(e, routingDown, countOnly) { with (this)
{
 // Opera <7 fix... don't perform any actions in those browsers.
 if (!this.childNodes) return;

 e = e || window.event;
 var elm = e.srcElement || e.target;

 // Initial check: if the parent checkbox for a tree level has been clicked, trigger a
 // pre-emptive downwards route within that tree, and set returnValue to true so that we
 // don't repeat it or mess with any of the original checkbox's siblings.
 if (elm && elm.id && elm.id.match(/^check-(.*)/) && !routingDown && !e[treeObj.evtProcessed])
 {
  var refTree = document.getElementById('tree-' + RegExp.$1);
  if (refTree)
  {
   refTree.setBoxStates(e, true, countOnly);
   e[treeObj.evtProcessed] = true;
  }
 }

  // Some counter and reference variables.
 var allChecked = true, boxCount = 0, subBoxes = null;
 // Get the name of this branch and see if the source element has id="check-xxxx".
 var thisLevel = this.id.match(/^tree-(.*)/)[1];
 var parBox = document.getElementById('check-' + thisLevel);

 // Loop through all children of all list elements inside this UL tag.
 for (var li = 0; li < childNodes.length; li++)
 {
  for (var tag = 0; tag < childNodes[li].childNodes.length; tag++)
  {
   var child = childNodes[li].childNodes[tag];
   if (!child) continue;
   if (child.tagName && child.type && child.tagName.match(/^input/i) &&
    child.type.match(/^checkbox/i))
   {
    // Set this box's state depending on its parent state, if we're routing downwards.
    if (routingDown && parBox && elm && elm.id && elm.id.match(/^check-/) && !countOnly)
     child.checked = parBox.checked;
    // Count the checked boxes directly under this level.
    allChecked &= child.checked;
    if (child.checked) boxCount++;
   }
   // And route this event to sublevels, to update their nodes, during a downwards route.
   if (child.tagName && child.tagName.match(/^ul/i) && (!e[treeObj.evtProcessed] || routingDown))
    child.setBoxStates(e, true, countOnly);
  }
 }

 // Once we've routed the event to all sublevels, set the 'returnValue' to true, so that
 // upper levels don't re-trigger a downwards route. This is a bit of a hack, admittedly :).
 if (!routingDown) e[treeObj.evtProcessed] = true;

 // Next, set the parent parBox state depending if all checkboxes in this menu are checked.
 // Of course, we don't set its state if it's the source of the event!
 if (parBox && parBox != elm && !countOnly) parBox.checked = allChecked;

 // If "countAllLevels" is set, overwrite the previous one-level-only count.
 if (treeObj.countAllLevels)
 {
  boxCount = 0;
  var subBoxes = this.getElementsByTagName('input');
  for (var i = 0; i < subBoxes.length; i++) if (subBoxes[i].checked) boxCount++;
 }

 // Either way, assign the counted value to the id="count-xxx" page element.
 var countElm = document.getElementById('count-' + thisLevel);
 if (countElm)
 {
  while (countElm.firstChild) countElm.removeChild(countElm.firstChild);
  if (boxCount) countElm.appendChild(document.createTextNode(treeObj.checkFormat.replace('%n%',
   boxCount)));
 }
}};


// Calls the init() function of any active trees on page load, and backup previous onloads.
var chtOldOL = window.onload;
window.onload = function()
{
 if (chtOldOL) chtOldOL();
 for (var i in CheckTree.list) CheckTree.list[i].init();
};
</script>
<script type="text/javascript">
<!--
var checkmenu = new CheckTree('checkmenu');
//-->
</script>
</head>

<body>

<form action="javascript:void(0)">
<ul id="tree-checkmenu" class="checktree">
 <li id="show-explorer">
  <input id="check-explorer" type="checkbox" />
  Internet Explorer
  <span id="count-explorer" class="count"></span>
  <ul id="tree-explorer">
   <li id="show-iemac">
    <input id="check-iemac" type="checkbox" />
    Macintosh
    <span id="count-iemac" class="count"></span>
    <ul id="tree-iemac">
     <li><input type="checkbox" />v4.0</li>
     <li class="last"><input type="checkbox" />v5.0</li>
    </ul>
   </li>
   <li id="show-iewin" class="last">
    <input id="check-iewin" type="checkbox" />
    Windows
    <span id="count-iewin" class="count"></span>
    <ul id="tree-iewin">
     <li><input type="checkbox" />v4.0</li>
     <li><input type="checkbox" />v5.0</li>
     <li><input type="checkbox" />v5.5</li>
     <li class="last"><input type="checkbox" />v6.0</li>
    </ul>
   </li>
  </ul>
 </li>
 <li id="show-netscape">
  <input id="check-netscape" type="checkbox" />
  Netscape
  <span id="count-netscape" class="count"></span>
  <ul id="tree-netscape">
   <li><input type="checkbox" />v4.0x</li>
   <li><input type="checkbox" />v4.5-v4.7</li>
   <li><input type="checkbox" />v6.x</li>
   <li><input type="checkbox" />v7.x</li>
   <li id="show-mozilla" class="last">
    <input id="check-mozilla" type="checkbox" />
    Mozilla
    <span id="count-mozilla" class="count"></span>
    <ul id="tree-mozilla">
     <li><input type="checkbox" />pre-v1.0</li>
     <li><input type="checkbox" />v1.0</li>
     <li><input type="checkbox" />v1.1+</li>
     <li class="last"><input type="checkbox" />Firebird</li>
    </ul>
   </li>
  </ul>
 </li>
 <li id="show-opera">
  <input id="check-opera" type="checkbox" />
  Opera
  <span id="count-opera" class="count"></span>
  <ul id="tree-opera">
   <li><input type="checkbox" />v5.x</li>
   <li><input type="checkbox" />v6.x</li>
   <li class="last"><input type="checkbox" />v7.x</li>
  </ul>
 </li>
 <li id="show-khtml">
  <input id="check-khtml" type="checkbox" />
  KHTML
  <span id="count-khtml" class="count"></span>
  <ul id="tree-khtml">
   <li><input type="checkbox" />Safari</li>
   <li class="last"><input type="checkbox" />Konqueror</li>
  </ul>
 </li>
 <li class="last"><input type="checkbox" />Omniweb</li>
</ul>

</form>




</body>
</html>