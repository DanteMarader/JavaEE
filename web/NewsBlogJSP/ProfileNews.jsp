<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Bitlab NEWS</title>
    <%@include file="Css.jsp"%>
</head>
<body>

<%@include file="Navbar_News.jsp" %>


<br><br><br>
<%
    if (currentUser != null) {
%>
<div class="container">
    <div id="main">
        <div class="row" id="real-estates-detail">
            <div class="col-lg-4 col-md-4 col-xs-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <header class="panel-title">
                            <div class="text-center">
                                <strong>Пользователь сайта</strong>
                            </div>
                        </header>
                    </div>
                    <div class="panel-body">
                        <div class="text-center" id="author">
                            <img style="width: 200px" src="https://img3.fonwall.ru/o/zg/meganekko-anime-girl-long-hair-smiling.jpeg">
                            <h3>Василий Понторезов</h3>
                            <small class="label label-warning">Российская Федерация</small>
                            <p>Я простой Русский пацан и мне всё по барабану.</p>
                            <p class="sosmed-author">
                                <a href="#"><i class="fa fa-facebook" title="Facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter" title="Twitter"></i></a>
                                <a href="#"><i class="fa fa-google-plus" title="Google Plus"></i></a>
                                <a href="#"><i class="fa fa-linkedin" title="Linkedin"></i></a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-8 col-md-8 col-xs-12">
                <div class="panel">
                    <div class="panel-body">
                        <ul id="myTab" class="nav nav-pills">
                            <li class="active"><a href="#detail" data-toggle="tab">О пользователе</a></li>
                            <li class=""><a href="#contact" data-toggle="tab">Отправить сообщение</a></li>
                        </ul>
                        <div id="myTabContent" class="tab-content">
                            <hr>
                            <div class="tab-pane fade active in" id="detail">
                                <h4>История профиля</h4>
                                <table class="table table-th-block">
                                    <tbody>
                                    <tr>
                                        <td class="active">Зарегистрирован:</td>
                                        <td>12-06-2016</td>
                                    </tr>
                                    <tr>
                                        <td class="active">Последняя активность:</td>
                                        <td>12-06-2016 / 09:11</td>
                                    </tr>
                                    <tr>
                                        <td class="active">Страна:</td>
                                        <td>Россия</td>
                                    </tr>
                                    <tr>
                                        <td class="active">Город:</td>
                                        <td>Волгоград</td>
                                    </tr>
                                    <tr>
                                        <td class="active">Пол:</td>
                                        <td>Мужской</td>
                                    </tr>
                                    <tr>
                                        <td class="active">Полных лет:</td>
                                        <td>43</td>
                                    </tr>
                                    <tr>
                                        <td class="active">Семейное положение:</td>
                                        <td>Женат</td>
                                    </tr>
                                    <tr>
                                        <td class="active">Рейтинг пользователя:</td>
                                        <td><i class="fa fa-star" style="color:red"></i> <i
                                                class="fa fa-star" style="color:red"></i> <i
                                                class="fa fa-star" style="color:red"></i> <i
                                                class="fa fa-star" style="color:red"></i> 4/5
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="active">Плагин рейтинга:</td>
                                        <td>
                                            <a href="https://bootstraptema.ru/stuff/plugins_bootstrap/improvement/bootstrap_star_rating/12-1-0-73"
                                               target="_blank">http://goo.gl/bGGXuw</a></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="tab-pane fade" id="contact">
                                <p></p>
                                <form role="form">
                                    <div class="form-group">
                                        <label>Ваше имя</label>
                                        <input type="text" class="form-control rounded"
                                               placeholder="Укажите Ваше Имя">
                                    </div>
                                    <div class="form-group">
                                        <label>Ваш телефон</label>
                                        <input type="text" class="form-control rounded"
                                               placeholder="(+7)(095)123456">
                                    </div>
                                    <div class="form-group">
                                        <label>E-mail адрес</label>
                                        <input type="email" class="form-control rounded"
                                               placeholder="Ваш Е-майл">
                                    </div>
                                    <div class="form-group">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox"> Согласен с условиями
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label>Текст Вашего сообщения</label>
                                        <textarea class="form-control rounded"
                                                  style="height: 100px;"></textarea>
                                        <p class="help-block">Текст сообщения будет отправлен
                                            пользователю</p>
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-success" data-original-title=""
                                                title="">Отправить
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div><!-- /.main -->
</div><!-- /.container -->
<%
} else {
%>
<div class="container mt-3">
    <div class="row mt-5">
        <div class="col-12 mx-auto">
            <h1 class="text-center">
                "NO USER"
            </h1>
        </div>
    </div>
</div>
<%
    }
%>

</body>
</html>
