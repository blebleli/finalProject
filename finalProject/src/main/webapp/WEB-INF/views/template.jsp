@begin-doc
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>리포트</title>
</head>
<body>
${loop:schema}
</body>
</html>
@end-doc

@begin-schema
<h2>${logicalName}의 템플릿</h2>
${loop:table}
@end-schema

@begin-table
<table border="1">
    <tr>
        <td colspan="6">${logicalName} (${physicalName})</td>
    </tr>
    <tr>
        <td>논리명</td>
        <td>물리명</td>
        <td>도메인</td>
        <td>데이터 타입</td>
        <td>Not Null</td>
        <td>설명</td>
    </tr>
${loop:column}
</table>
@end-table


@begin-column
    <tr>
        <td>${logicalName}${pfk()}</td>
        <td>${physicalName}</td>
        <td>${domain}</td>
        <td>${dataType}</td>
        <td>${notNullYN}</td>
        <td>${comment}&nbsp;</td>
    </tr>
@end-column