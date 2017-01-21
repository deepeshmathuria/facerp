<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="true"
	import="portal.entity.* , java.util.*, javax.persistence.*"%>
<!DOCTYPE HTML>
<%
	EntityManagerFactory emf = (EntityManagerFactory) getServletContext()
			.getAttribute("emf");
	EntityManager em = emf.createEntityManager();
	HttpSession sess = request.getSession(false);
	FacCoord L = em.createQuery(
			"SELECT fc FROM FacCoord fc WHERE fc.id ="
					+ sess.getAttribute("id") + "", FacCoord.class)
			.getSingleResult();
%>
<HEAD>
<META content="IE=11.0000" http-equiv="X-UA-Compatible">
<TITLE>W3.CSS Template</TITLE>
<META http-equiv="Content-Type"
	content="text/html; charset=windows-1252">
<META name="viewport" content="width=device-width, initial-scale=1">
<LINK href="Admins_files/w3.css" rel="stylesheet">
<LINK href="Admins_files/css.css" rel="stylesheet">
<LINK href="Admins_files/font-awesome.min.css" rel="stylesheet">
<STYLE>
html, body, h1, h2, h3, h4, h5 {
	font-family: "Raleway", sans-serif
}
</STYLE>

<META name="GENERATOR" content="MSHTML 11.00.9600.16384">
</HEAD>
<BODY class="w3-light-grey">
	<!-- Top container -->
	<DIV class="w3-container w3-top w3-black w3-large w3-padding"
		style="z-index: 4;">
		<BUTTON class="w3-btn w3-hide-large w3-padding-0 w3-hover-text-grey"
			onclick="w3_open();">
			<I class="fa fa-bars"></I> &nbsp;Menu
		</BUTTON>
		<SPAN class="w3-right">Logo</SPAN>
	</DIV>
	<!-- Sidenav/menu -->
	<NAV class="w3-sidenav w3-collapse w3-white w3-animate-left"
		id="mySidenav" style="width: 300px; z-index: 3;">
		<BR>
		<DIV class="w3-container w3-row">
			<DIV class="w3-col s4">
				<IMG class="w3-circle w3-margin-right" style="width: 46px;"
					src="Admins_files/avatar2.png">
			</DIV>
			<DIV class="w3-col s8">
				<SPAN>Welcome, <STRONG><%=%></STRONG></SPAN><BR> <A
					class="w3-hover-none w3-hover-text-red w3-show-inline-block"
					href="http://www.w3schools.com/w3css/tryw3css_templates_analytics.htm#"><I
					class="fa fa-envelope"></I></A> <A
					class="w3-hover-none w3-hover-text-green w3-show-inline-block"
					href="http://www.w3schools.com/w3css/tryw3css_templates_analytics.htm#"><I
					class="fa fa-user"></I></A> <A
					class="w3-hover-none w3-hover-text-blue w3-show-inline-block"
					href="http://www.w3schools.com/w3css/tryw3css_templates_analytics.htm#"><I
					class="fa fa-cog"></I></A>
			</DIV>
		</DIV>
		<HR>

		<DIV class="w3-container">
			<H5>Dashboard</H5>
		</DIV>
		<A title="close menu"
			class="w3-padding-16 w3-hide-large w3-dark-grey w3-hover-black"
			onclick="w3_close()"
			href="http://www.w3schools.com/w3css/tryw3css_templates_analytics.htm#"><I
			class="fa fa-remove fa-fw"></I>&nbsp; Close Menu</A><A
			class="w3-padding w3-blue"
			href="http://www.w3schools.com/w3css/tryw3css_templates_analytics.htm#"><I
			class="fa fa-users fa-fw"></I>&nbsp; Overview</A><A class="w3-padding"
			href="http://www.w3schools.com/w3css/tryw3css_templates_analytics.htm#"><I
			class="fa fa-eye fa-fw"></I>&nbsp; Views</A><A class="w3-padding"
			href="http://www.w3schools.com/w3css/tryw3css_templates_analytics.htm#"><I
			class="fa fa-users fa-fw"></I>&nbsp; Traffic</A><A class="w3-padding"
			href="http://www.w3schools.com/w3css/tryw3css_templates_analytics.htm#"><I
			class="fa fa-bullseye fa-fw"></I>&nbsp; Geo</A><A class="w3-padding"
			href="http://www.w3schools.com/w3css/tryw3css_templates_analytics.htm#"><I
			class="fa fa-diamond fa-fw"></I>&nbsp; Orders</A><A class="w3-padding"
			href="http://www.w3schools.com/w3css/tryw3css_templates_analytics.htm#"><I
			class="fa fa-bell fa-fw"></I>&nbsp; News</A><A class="w3-padding"
			href="http://www.w3schools.com/w3css/tryw3css_templates_analytics.htm#"><I
			class="fa fa-bank fa-fw"></I>&nbsp; General</A><A class="w3-padding"
			href="http://www.w3schools.com/w3css/tryw3css_templates_analytics.htm#"><I
			class="fa fa-history fa-fw"></I>&nbsp; History</A><A class="w3-padding"
			href="http://www.w3schools.com/w3css/tryw3css_templates_analytics.htm#"><I
			class="fa fa-cog fa-fw"></I>&nbsp; Settings</A><BR> <BR>
	</NAV>
	<!-- Overlay effect when opening sidenav on small screens -->
	<DIV title="close side menu"
		class="w3-overlay w3-hide-large w3-animate-opacity" id="myOverlay"
		style="cursor: pointer;" onclick="w3_close()"></DIV>
	<!-- !PAGE CONTENT! -->
	<DIV class="w3-main" style="margin-top: 43px; margin-left: 300px;">
		<!-- Header -->
		<HEADER class="w3-container" style="padding-top: 22px;">
			<H5>
				<B><I class="fa fa-dashboard"></I> My Dashboard</B>
			</H5>
		</HEADER>
		<DIV class="w3-row-padding w3-margin-bottom">
			<DIV class="w3-quarter">
				<DIV class="w3-container w3-red w3-padding-16">
					<DIV class="w3-left">
						<I class="fa fa-comment w3-xxxlarge"></I>
					</DIV>
					<DIV class="w3-right">
						<H3>52</H3>
					</DIV>
					<DIV class="w3-clear"></DIV>
					<H4>Messages</H4>
				</DIV>
			</DIV>
			<DIV class="w3-quarter">
				<DIV class="w3-container w3-blue w3-padding-16">
					<DIV class="w3-left">
						<I class="fa fa-eye w3-xxxlarge"></I>
					</DIV>
					<DIV class="w3-right">
						<H3>99</H3>
					</DIV>
					<DIV class="w3-clear"></DIV>
					<H4>Views</H4>
				</DIV>
			</DIV>
			<DIV class="w3-quarter">
				<DIV class="w3-container w3-teal w3-padding-16">
					<DIV class="w3-left">
						<I class="fa fa-share-alt w3-xxxlarge"></I>
					</DIV>
					<DIV class="w3-right">
						<H3>23</H3>
					</DIV>
					<DIV class="w3-clear"></DIV>
					<H4>Shares</H4>
				</DIV>
			</DIV>
			<DIV class="w3-quarter">
				<DIV class="w3-container w3-orange w3-text-white w3-padding-16">
					<DIV class="w3-left">
						<I class="fa fa-users w3-xxxlarge"></I>
					</DIV>
					<DIV class="w3-right">
						<H3>50</H3>
					</DIV>
					<DIV class="w3-clear"></DIV>
					<H4>Users</H4>
				</DIV>
			</DIV>
		</DIV>
		<DIV class="w3-container w3-section">
			<DIV class="w3-row-padding" style="margin: 0px -16px;">
				<DIV class="w3-third">
					<H5>Regions</H5>
					<IMG style="width: 100%;" alt="Google Regional Map"
						src="Admins_files/region.jpg">
				</DIV>
				<DIV class="w3-twothird">
					<H5>Feeds</H5>
					<TABLE class="w3-table w3-striped w3-white">
						<TBODY>
							<TR>
								<TD><I class="fa fa-user w3-blue w3-padding-tiny"></I></TD>
								<TD>New record, over 90 views.</TD>
								<TD><I>10 mins</I></TD>
							</TR>
							<TR>
								<TD><I class="fa fa-bell w3-red w3-padding-tiny"></I></TD>
								<TD>Database error.</TD>
								<TD><I>15 mins</I></TD>
							</TR>
							<TR>
								<TD><I
									class="fa fa-users w3-orange w3-text-white w3-padding-tiny"></I></TD>
								<TD>New record, over 40 users.</TD>
								<TD><I>17 mins</I></TD>
							</TR>
							<TR>
								<TD><I class="fa fa-comment w3-red w3-padding-tiny"></I></TD>
								<TD>New comments.</TD>
								<TD><I>25 mins</I></TD>
							</TR>
							<TR>
								<TD><I class="fa fa-bookmark w3-light-blue w3-padding-tiny"></I></TD>
								<TD>Check transactions.</TD>
								<TD><I>28 mins</I></TD>
							</TR>
							<TR>
								<TD><I class="fa fa-laptop w3-red w3-padding-tiny"></I></TD>
								<TD>CPU overload.</TD>
								<TD><I>35 mins</I></TD>
							</TR>
							<TR>
								<TD><I class="fa fa-share-alt w3-green w3-padding-tiny"></I></TD>
								<TD>New shares.</TD>
								<TD><I>39 mins</I></TD>
							</TR>
						</TBODY>
					</TABLE>
				</DIV>
			</DIV>
		</DIV>
		<HR>

		<DIV class="w3-container">
			<H5>General Stats</H5>
			<P>New Visitors</P>
			<DIV class="w3-progress-container w3-grey">
				<DIV class="w3-progressbar w3-green" id="myBar" style="width: 25%;">
					<DIV class="w3-center w3-text-white">+25%</DIV>
				</DIV>
			</DIV>
			<P>New Users</P>
			<DIV class="w3-progress-container w3-grey">
				<DIV class="w3-progressbar w3-orange" id="myBar" style="width: 50%;">
					<DIV class="w3-center w3-text-white">50%</DIV>
				</DIV>
			</DIV>
			<P>Bounce Rate</P>
			<DIV class="w3-progress-container w3-grey">
				<DIV class="w3-progressbar w3-red" id="myBar" style="width: 75%;">
					<DIV class="w3-center w3-text-white">75%</DIV>
				</DIV>
			</DIV>
		</DIV>
		<HR>

		<DIV class="w3-container">
			<H5>Countries</H5>
			<TABLE
				class="w3-table w3-striped w3-bordered w3-border w3-hoverable w3-white">
				<TBODY>
					<TR>
						<TD>United States</TD>
						<TD>65%</TD>
					</TR>
					<TR>
						<TD>UK</TD>
						<TD>15.7%</TD>
					</TR>
					<TR>
						<TD>Russia</TD>
						<TD>5.6%</TD>
					</TR>
					<TR>
						<TD>Spain</TD>
						<TD>2.1%</TD>
					</TR>
					<TR>
						<TD>India</TD>
						<TD>1.9%</TD>
					</TR>
					<TR>
						<TD>France</TD>
						<TD>1.5%</TD>
					</TR>
				</TBODY>
			</TABLE>
			<BR>
			<BUTTON class="w3-btn">
				More Countries &nbsp;<I class="fa fa-arrow-right"></I>
			</BUTTON>
		</DIV>
		<HR>

		<DIV class="w3-container">
			<H5>Recent Users</H5>
			<UL class="w3-ul w3-card-4 w3-white">
				<LI class="w3-padding-16"><SPAN
					class="w3-closebtn w3-padding w3-margin-right w3-medium"
					onclick="this.parentElement.style.display='none'">x</SPAN> <IMG
					class="w3-left w3-circle w3-margin-right" style="width: 35px;"
					src="Admins_files/avatar2.png"> <SPAN class="w3-xlarge">Mike</SPAN><BR></LI>
				<LI class="w3-padding-16"><SPAN
					class="w3-closebtn w3-padding w3-margin-right w3-medium"
					onclick="this.parentElement.style.display='none'">x</SPAN> <IMG
					class="w3-left w3-circle w3-margin-right" style="width: 35px;"
					src="Admins_files/avatar5.png"> <SPAN class="w3-xlarge">Jill</SPAN><BR></LI>
				<LI class="w3-padding-16"><SPAN
					class="w3-closebtn w3-padding w3-margin-right w3-medium"
					onclick="this.parentElement.style.display='none'">x</SPAN> <IMG
					class="w3-left w3-circle w3-margin-right" style="width: 35px;"
					src="Admins_files/avatar6.png"> <SPAN class="w3-xlarge">Jane</SPAN><BR></LI>
			</UL>
		</DIV>
		<HR>

		<DIV class="w3-container">
			<H5>Recent Comments</H5>
			<DIV class="w3-row">
				<DIV class="w3-col m2 text-center">
					<IMG class="w3-circle" style="width: 96px; height: 96px;"
						src="Admins_files/avatar3.png">
				</DIV>
				<DIV class="w3-col m10 w3-container">
					<H4>
						John <SPAN class="w3-opacity w3-medium">Sep 29, 2014, 9:12
							PM</SPAN>
					</H4>
					<P>Keep up the GREAT work! I am cheering for you!! Lorem ipsum
						dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
						incididunt ut labore et dolore magna aliqua.</P>
					<BR>
				</DIV>
			</DIV>
			<DIV class="w3-row">
				<DIV class="w3-col m2 text-center">
					<IMG class="w3-circle" style="width: 96px; height: 96px;"
						src="Admins_files/avatar1.png">
				</DIV>
				<DIV class="w3-col m10 w3-container">
					<H4>
						Bo <SPAN class="w3-opacity w3-medium">Sep 28, 2014, 10:15
							PM</SPAN>
					</H4>
					<P>Sed do eiusmod tempor incididunt ut labore et dolore magna
						aliqua.</P>
					<BR>
				</DIV>
			</DIV>
		</DIV>
		<BR>
		<DIV class="w3-container w3-dark-grey w3-padding-32">
			<DIV class="w3-row">
				<DIV class="w3-container w3-third">
					<H5 class="w3-bottombar w3-border-green">Demographic</H5>
					<P>Language</P>
					<P>Country</P>
					<P>City</P>
				</DIV>
				<DIV class="w3-container w3-third">
					<H5 class="w3-bottombar w3-border-red">System</H5>
					<P>Browser</P>
					<P>OS</P>
					<P>More</P>
				</DIV>
				<DIV class="w3-container w3-third">
					<H5 class="w3-bottombar w3-border-orange">Target</H5>
					<P>Users</P>
					<P>Active</P>
					<P>Geo</P>
					<P>Interests</P>
				</DIV>
			</DIV>
		</DIV>
		<!-- Footer -->
		<FOOTER class="w3-container w3-padding-16 w3-light-grey">
			<H4>FOOTER</H4>
			<P>
				Powered by <A href="http://www.w3schools.com/w3css/default.asp"
					target="_blank">w3.css</A>
			</P>
		</FOOTER>
		<!-- End page content -->
	</DIV>
	<SCRIPT>
// Get the Sidenav
var mySidenav = document.getElementById("mySidenav");

// Get the DIV with overlay effect
var overlayBg = document.getElementById("myOverlay");

// Toggle between showing and hiding the sidenav, and add overlay effect
function w3_open() {
    if (mySidenav.style.display === 'block') {
        mySidenav.style.display = 'none';
        overlayBg.style.display = "none";
    } else {
        mySidenav.style.display = 'block';
        overlayBg.style.display = "block";
    }
}

// Close the sidenav with the close button
function w3_close() {
    mySidenav.style.display = "none";
    overlayBg.style.display = "none";
}
</SCRIPT>
</BODY>
</HTML>
