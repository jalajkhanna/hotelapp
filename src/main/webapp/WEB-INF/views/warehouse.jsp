<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <title>WareHouse</title>

    <link href="<c:url value='/static/images/favicon.png' />" rel="icon" type="image/x-icon">

    <link type="text/css" rel="stylesheet" href="<c:url value='/static/css/bootstrap.min.css' />">
    <link type="text/css" rel="stylesheet" href="<c:url value='/static/css/bootstrap-responsive.min.css' />">
    <link type="text/css" rel="stylesheet" href="<c:url value='/static/css/mdb.css' />">

    <script type="text/javascript" src="<c:url value='/static/js/jquery.min.js' />"></script>
    <script type="text/javascript" src="<c:url value='/static/js/bootstrap.min.js' />"></script>
    <script type="text/javascript" src="<c:url value='/static/js/mdb.js' />"></script>
</head>
<body class="background" style="padding: 20px;">
<jsp:include page="includes/warehouse_header.jsp"/>
<div id="container">
        <section class="half">
            <!-- Trigger the modal with a button -->
            <table class="table table-bordered">
                <thead>
                    <th> Query</th>
                <th>Action</th>
                </thead>
                <tbody>
                <tr>
                    <td style="font-size: 20px; font-family:'Verdana' ">
                        Get the total amount earned from bookings across each location
                    </td>
                    <td>
                        <button type="button" class="btn btn-primary waves-button waves-light light-blue" data-toggle="modal" data-target="#myModal">Search</button>
                    </td>
                </tr>
                <tr>
                    <td style="font-size: 20px; font-family:'Verdana' ">
                        Get the total amount earned by all locations
                    </td>
                    <td>
                        <button type="submit" class="btn btn-primary waves-button waves-light light-blue" data-toggle="modal" data-target="#myModal2" >Search</button>
                    </td>
                </tr>
                <form:form action="/findAmountEarnedByEachForiegnerCountry" method="post">
                    <tr>
                        <td style="font-size: 20px; font-family:'Verdana' ">
                            Get the sum of amount earned by bookings from customers who are NOT from the country of hotel
                        </td>
                        <td>
                            <button type="submit" class="btn btn-primary waves-button waves-light light-blue" value="submit" >Search</button>
                        </td>
                    </tr>
                </form:form>

                <tr>
                    <td style="font-size: 20px; font-family:'Verdana' ">
                        Get the maximum amount earned through a single booking in a given month
                    </td>
                    <td>
                        <button type="submit" class="btn btn-primary waves-button waves-light light-blue" data-toggle="modal" data-target="#myModal4" >Search</button>
                    </td>
                </tr>


                <tr>
                    <td style="font-size: 20px; font-family:'Verdana' ">
                        Get the number of bookings and amount earned from them for stays greater than some number of days
                    </td>
                    <td>
                        <button type="submit" class="btn btn-primary waves-button waves-light light-blue" data-toggle="modal" data-target="#myModal5" >Search</button>
                    </td>
                </tr>

                </tbody>
            </table>

            <!-- Modal -->
            <div id="myModal" class="modal fade" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Select Query Parameters</h4>
                        </div>
                        <form:form action="/findAmountForMonthEachLocation" method="post">
                            <div class="form-group">
                                <select   class="form-control" style="margin-top: 10%;margin-left: 10%;" name="month" id="month">
                                    <option selected>--Select Month--</option>
                                    <option>January</option>
                                    <option>February</option>
                                    <option>March</option>
                                    <option>April</option>
                                    <option>May</option>
                                    <option>June</option>
                                    <option>July</option>
                                    <option>August</option>
                                    <option>September</option>
                                    <option>October</option>
                                    <option>November</option>
                                    <option>December</option>

                                </select>
                            </div>

                            <div class="form-group">
                                <select class="form-control" style="margin-left: 10%;margin-top: 10%;margin-bottom: 10%;" name="year" id="year">
                                    <option selected>--Select Year--</option>
                                    <option>2018</option>
                                    <option>2019</option>
                                </select>
                            </div>






                        <div class="modal-footer">
                            <button type="submit" value="Submit"
                                    class="btn btn-primary waves-button waves-light light-blue"
                                    style="width: 240px; margin-right: 30% ">Submit
                            </button>

                        </div>

                        </form:form>
                    </div>

                </div>
            </div>

            <div id="myModal2" class="modal fade" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Select Query Parameters</h4>
                        </div>
                        <form:form action="/findTotalAmountEarnedByAllLocation" method="post">
                          <div class="form-group">
                              <select   class="form-control" style="margin-top: 10%;margin-left: 10%;" name="month" id="month">
                                  <option selected>--Select Month--</option>
                                  <option>January</option>
                                  <option>February</option>
                                  <option>March</option>
                                  <option>April</option>
                                  <option>May</option>
                                  <option>June</option>
                                  <option>July</option>
                                  <option>August</option>
                                  <option>September</option>
                                  <option>October</option>
                                  <option>November</option>
                                  <option>December</option>

                              </select>
                          </div>

                            <div class="form-group">
                                <select class="form-control" style="margin-left: 10%;margin-top: 10%;margin-bottom: 10%;" name="year" id="year">
                                    <option selected>--Select Year--</option>
                                    <option>2018</option>
                                    <option>2019</option>
                                </select>
                            </div>






                        <div class="modal-footer">
                            <button type="submit" value="Submit"
                                    class="btn btn-primary waves-button waves-light light-blue"
                                    style="width: 240px; margin-right: 30% ">Submit
                            </button>

                        </div>
                        </form:form>
                    </div>

                </div>
            </div>

        </section>

            <section id="do_migration" style="margin-top: 5%">
                <form:form cssStyle="float: left" action="/do-migration-migrate" method="post">
                    <div style="margin-right: 550px;margin-left: 550px;">
                        <input class="btn btn-blue-grey waves-button waves-light" style="width: 240px; height: 40px"
                               type="submit" value="MOVE TO WAREHOUSE"/>
                        <p> Number of rows updated : ${numOfRowsMoved}</p>
                    </div>
                </form:form>
            </section>




    <div id="myModal4" class="modal fade" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Select Query Parameter</h4>
                </div>
                <form:form action="/findMaxBookingAmountForMonth" method="post">

                    <div class="form-group">
                        <select   class="form-control" style="margin-top: 10%;margin-left: 10%; margin-bottom: 10%" name="month" id="month">
                            <option selected>--Select Month--</option>
                            <option>January</option>
                            <option>February</option>
                            <option>March</option>
                            <option>April</option>
                            <option>May</option>
                            <option>June</option>
                            <option>July</option>
                            <option>August</option>
                            <option>September</option>
                            <option>October</option>
                            <option>November</option>
                            <option>December</option>

                        </select>
                    </div>





                <div class="modal-footer">
                    <button type="submit" value="Submit"
                            class="btn btn-primary waves-button waves-light light-blue"
                            style="width: 240px; margin-right: 30% ">Submit
                    </button>

                </div>
                </form:form>
            </div>

        </div>
    </div>

    <div id="myModal5" class="modal fade" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Select Query Parameter</h4>
                </div>
                <form:form action="/numOfBookingsWithBookingGreaterThanXDays" method="post">

                    <div class="form-group">
                        <label style="font-size:25px; margin-left:10%; margin-top:5%;">Number of Days</label>
                        <input type="numberOfDays" class="form-control" name="x" id="x" placeholder="Number of Days" style="width: 450px;margin-left: 10%;margin-bottom: 5%;border-radius: 5px;">
                    </div>





                    <div class="modal-footer">
                        <button type="submit" value="Submit"
                                class="btn btn-primary waves-button waves-light light-blue"
                                style="width: 240px; margin-right: 30% ">Submit
                        </button>

                    </div>
                </form:form>
            </div>

        </div>
    </div>
</div>





</body>
</html>
