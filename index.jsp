<%@include file="koneksi.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Penerimaan Uang Kas Bulanan</title>
</head>

<body>
    <center>
        <h1>Penerimaan Uang Kas Bulanan</h1>
        <table border="1">
            <thead>
                <tr>
                    <!-- <th>No</th> -->
                    <th>ID</th>
                    <th>Nama</th>
                    <th>Kelas</th>
                    <th>Nominal</th>
                    <th>Tanggal Bayar</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                <%
                String data = "SELECT * FROM uang_kas";
                rs = st.executeQuery(data);
                while(rs.next()){
                %>
                <tr>
                    <td><%= rs.getString("id")%></td>
                    <td><%= rs.getString("nama")%></td>
                    <td><%= rs.getString("kelas")%></td>
                    <td><%= rs.getString("nominal")%></td>
                    <td><%= rs.getString("tanggal_bayar")%></td>
                    <td><a href="hapus.jsp?id=<%= rs.getString("id")%>">Delete</a>|<a
                            href="form_ubah.jsp?id=<%= rs.getString("id")%>">Edit</a></td>
                </tr>
                <% } %>
            </tbody>
        </table>
        <a href="form_tambah_data.jsp">Tambah data</a>
    </center>

</body>

</html>
