<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" session="true"%>
<%
    String user = (String) session.getAttribute("usuario");
    if (user.equals("")) {
        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html lang="es">

    <head>

        <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="RAT">

        <title><%=Titulo%></title>

        <link rel="shorcut icon" href="resources/images/favicon.png" type="image/png"/>

        <link href="resources/css/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="resources/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">
        <link href="resources/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">
        <link href="resources/bower_components/datatables-responsive/css/dataTables.responsive.css" rel="stylesheet">
        <link href="resources/css/style.css" rel="stylesheet">
        <link href="resources/fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    </head>

    <body>

        <div id="wrapper">

            <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.jsp"><img src="resources/images/logo.png" alt="Pinvalidda" width="130"></a>
                </div>

                <ul class="nav navbar-top-links navbar-right">
                    <li class="dropdown">
                        <a class="fa fa-user dropdown-toggle" data-toggle="dropdown" href="#">
                            <%=user%>
                            <i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="modificar-perfil.jsp"><i class="fa fa-gear fa-fw"></i> Modificar perfil</a></li>
                            <li><a href="Logout"><i class="fa fa-sign-out fa-fw"></i> Cerrar sesión</a></li>
                        </ul>
                    </li>
                </ul>

                <div class="navbar-default sidebar" role="navigation">
                    <div class="sidebar-nav navbar-collapse">
                        <ul class="nav" id="side-menu">
                            <li>
                                <a href="index.jsp"><i class="fa fa-home fa-fw"></i> Inicio</a>
                            </li>
                            <li >
                                <a href="#"><i class="fa fa-user fa-fw"></i> Usuarios<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="consulta-user.jsp"><i class="fa fa-search fa-fw"></i> Consultar usuarios</a>
                                    </li>
                                    <li>
                                        <a href="registro-user.jsp"><i class="fa fa-user fa-fw"></i> Registro de usuarios</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="registro-employee.jsp"><i class="fa fa-male fa-fw"></i> Empleados</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="registro-inandout.jsp"><i class="fa fa-exchange fa-fw"></i> Entradas y salidas</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="registro-charges.jsp"><i class="fa fa-suitcase fa-fw"></i> Cargos</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-list-ul fa-fw"></i> Actividades<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="consulta-activities.jsp"><i class="fa fa-search fa-fw"></i>Consultar asignación de actividades</a>
                                    </li>
                                    <li>
                                        <a href="registro-activities.jsp"><i class="fa fa-list-ul fa-fw"></i> Asignación de actividades</a>
                                    </li>
                                    <li>
                                        <a href="consulta-types.jsp"><i class="fa fa-search fa-fw"></i> Consultar registro de actividades</a>
                                    </li>
                                    <li>
                                        <a href="registro-types.jsp"><i class="fa fa-send-o fa-fw"></i> Registro de actividades</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>