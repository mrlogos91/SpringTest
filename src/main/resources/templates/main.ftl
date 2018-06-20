<#import "parts.common.ftl" as c>
<#import "parts/login.ftl as l>

<@c.page>
    <div>
        <@l.logout />
    </div>
    <div>
        <form method="post" action="add">
            <input  type="text" name="text" placeholder="Введите сообщение" />
            <input  type="text" name="tag"  placeholder="Тэг" />
            <input type="hidden" name="_csrf" value="{$_csrf.token}">
            <button type="sumbit">Добавить</button>
        </form>
    </div>
    <div>Список сообщений</div>
    <form method="post" action="filter">
        <input type="text" name="filter">
        <input type="hidden" name="_csrf" value="{$_csrf.token}">
        <button type="sumbit">Найти</button>
    </form>
    {{#messages}}
        <div>
            <b>{{id}}</b>
            <span>{{text}}</span>
            <i>{{tag}}</i>
            <i>{{authorName}}</i>
        </div>
    {{/messages}}
</body>
</html>
