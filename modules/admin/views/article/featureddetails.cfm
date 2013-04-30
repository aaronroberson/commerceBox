<cfoutput>#renderView("article/sidebar")#</cfoutput>

<div class="column-w573 left">
	<div class="outerbox">
		<div class="boxtab">
			<h2><cfoutput>#rc.title#</cfoutput></h2>
		</div>
		<div id="article" class="innerbox">
			<cfoutput>#getPlugin("messagebox").renderIt()#</cfoutput>
			<table width="100%">
			<form name="editor_form" id="editor_form" action="<cfoutput>#Event.buildLink(rc.xehFeaturedSave)#</cfoutput>" method="post" >
				<input type="hidden" name="id" value="<cfoutput>#rc.featured.getid()#</cfoutput>" />
				<tr><td>
				<label for="productid">Article:</label>
				</td>
					<td><select name="articleid">
					<cfoutput query="rc.qArticles">
						<option value="#rc.qArticles.id#"<cfif rc.featured.getid() AND rc.featured.getArticle().getID() EQ rc.qArticles.id> selected="selected"</cfif>>#rc.qArticles.title#</option>
					</cfoutput>
				</select></td>
				</tr>
				<tr><td>
				<label for="start">Start Date:</label>
				</td>
					<td><input type="text" name="start" id="start" value="<cfoutput>#rc.featured.getStart()#</cfoutput>" />
					<script type="text/javascript" language="javascript">var cal1 = new calendar3(document.forms['editor_form'].elements['start']);</script> <a href="javascript:cal1.popup();"><img src="/includes/images/cal.gif" alt="calendar" width="16" height="16" /></a></td>
				</tr>
				<tr><td>
				<label for="end">End Date:</label>
				</td>
					<td><input type="text" name="end" id="end" value="<cfoutput>#rc.featured.getEnd()#</cfoutput>" /><script type="text/javascript" language="javascript">var cal2 = new calendar3(document.forms['editor_form'].elements['end']);</script> <a href="javascript:cal2.popup();"><img src="/includes/images/cal.gif" alt="calendar" width="16" height="16" /></a></td>
				</tr>
				<tr><td colspan="2">
				<input type="submit" value="Save Featured Schedule" />
				</td></tr>
			</form>
			</table>
		</div>
	</div>
</div>