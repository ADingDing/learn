<%@ page contentType="text/html; charset=GB2312" %>
<html>
<head></head>
<body>

<%!
    private int initVar = 0;
    private int serviceVar = 0;
    private int destroyVar = 0;
%>

<%!
    public void jspInit() {
        initVar++;
        System.out.println("jspInit(): JSP����ʼ����" + initVar + "��");
    }

    public void jspDestroy() {
        destroyVar++;
        System.out.println("jspDestroy(): JSP��������" + destroyVar + "��");
    }
%>

<%
    serviceVar++;
    System.out.println("_jspService(): JSP����Ӧ��" + serviceVar + "������");

    String content1 = "��ʼ������ :  " + initVar;
    String content2 = "��Ӧ�ͻ�������� : " + serviceVar;
    String content3 = "���ٴ��� : " + destroyVar;

    // �Զ�ˢ�� Response.setHeader("Refresh","time; URL=url") ʱ�䵥λ��
    response.setHeader("Refresh", "3;URL=http://localhost/test/?forward_by_router=commons/test1_init");
%>
<!-- ע��  HTMLע�ͣ�ͨ��������鿴��ҳԴ����ʱ���Կ���ע������-->
<%-- ע�� JSPע�ͣ�ע�����ݲ��ᱻ������������������ᱻ����--%>
<h1><%=content1%>
</h1>

<h1><%=content2%>
</h1>

<h1><%=content3%>
</h1>

<h1>${param["forward_by_router"]}</h1>

<h1>${param.forward_by_router}</h1>
</body>
</html>