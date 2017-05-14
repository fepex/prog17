<head>
<#assign sec=JspTaglibs["http://www.springframework.org/security/tags"]>
<#assign spring=JspTaglibs["http://www.springframework.org/tags"] >
    <link rel="stylesheet" href="/css/bootstrap.css" >
    <script src="/js/jquery-1.11.1.min.js"></script>
    <script src="/js/bootstrap.js"></script>
    <title>Авторизация</title>
</head>
<#assign form=JspTaglibs["http://www.springframework.org/tags/form"] >
<@form.form commandName = "regForm"  action = "/register" method = "post" >
<div class="container">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-lg-4">
            <#if emailExists??>
                <div style="color: red;">
                ${emailExists}
                </div>
            </#if>
            <#if passwordError??>
                <div style="color: red;">
                ${passwordError}
                </div>
            </#if>
            <h1 class="form-signin-heading">Регистрация</h1>
            <#if emailExists??> ${emailExists}</#if>
            <label class="checkbox">Имя</label>
            <@form.input path="name" cssClass="form-control"  />
            <@form.errors path="name" cssStyle="color: red;" />
            <label class="checkbox">Фамилия</label>
            <@form.input path="surname" cssClass="form-control"  />
            <@form.errors path="surname" cssStyle="color: red;" />
            <label class="checkbox">Почта</label>
            <@form.input path="email" cssClass="form-control"  />
            <@form.errors path="email" cssStyle="color: red;" />
            <h3>Придумайте пароль</h3>
            <label class="checkbox">Пароль</label>
            <@form.password path="password" cssClass="form-control" />
            <@form.errors path="password" cssStyle="color: red;" />
            <label class="checkbox">Подтвердите Пароль</label>
            <@form.password path="confirmPassword" cssClass="form-control"/>
            <@form.errors path="confirmPassword" cssStyle="color: red;" />
            <#if passwordError??> ${passwordError}</#if>



        </div>
        <div class="col-xs-12 col-sm-12 col-lg-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-1-">
            <br><br>
            <h3 class="dark-grey">Terms and Conditions</h3><br>
            <p>

                By clicking on "Register" you agree to The Company's' Terms and Conditions
            </p>
            <p>
                While rare, prices are subject to change based on exchange rate fluctuations -
                should such a fluctuation happen, we may request an additional payment. You have the option to request a full refund or to pay the new price. (Paragraph 13.5.8)
            </p>
            <p>
                Should there be an error in the description or pricing of a product, we will provide you with a full refund (Paragraph 13.5.6)
            </p>
            <p>
                Acceptance of an order by us is dependent on our suppliers ability to provide the product. (Paragraph 13.5.6)
            </p>

            <button type="submit" class="btn btn-primary">Зарегистрироваться</button><a href="/catalog/1" class="btn btn-default">На главную</a>
        </div>
    </div>
</div>
</@form.form>