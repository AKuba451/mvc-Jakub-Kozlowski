<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%-- Formularz dodawania gry: wartości i błędy pobierane przez EL --%>
<%@ include file="/WEB-INF/views/fragments/header.jspf" %>

<h2> Dodaj grę</h2>
<form method= "post" action="${pageContext.request.contextPath}/games/add">
    <label>Tytuł
        <input name="title" value="${param.title}">
    </label>
    <span class="error">${errors.title}</span>

    <label>Producent
        <input name="producer" value="${param.producer}">
    </label>
    <span class="error">${errors.producer}</span>

    <label>Rok Wydania
        <input name="year" value="${param.year}">
    </label>
    <span class="error">${errors.year}</span>

    <button type="submit">Zapisz</button>
</form>

<p>Liczba błędów: ${empty errors ? 0 : errors.size()}</p>

<%@ include file="/WEB-INF/views/fragments/footer.jspf" %>