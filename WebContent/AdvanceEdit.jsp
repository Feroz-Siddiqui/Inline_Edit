<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="http://cdn.datatables.net/1.10.11/css/jquery.dataTables.min.css" />
    <style>
        .my-input-class {
            padding: 3px 6px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .my-confirm-class {
            padding: 3px 6px;
            font-size: 12px;
            color: white;
            text-align: center;
            vertical-align: middle;
            border-radius: 4px;
            background-color: #337ab7;
            text-decoration: none;
        }
        .my-cancel-class {
            padding: 3px 6px;
            font-size: 12px;
            color: white;
            text-align: center;
            vertical-align: middle;
            border-radius: 4px;
            background-color: #a94442;
            text-decoration: none;
        }
        .error {
            border: solid 1px;
            border-color: #a94442;
        }
        tr{
        position:relative;
        }
    </style>
</head>
<body>
    <table id="myAdvancedTable" class="stripe" style="    overflow: auto;
    width: 1476px;!important;position: relative;">
        <thead>
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Elliott</td>
                <td>Beaty</td>
                <td>elliott@example.com</td>
            </tr>
            <tr>
                <td>Joe</td>
                <td>Dirt</td>
                <td>Joe@example.com</td>
            </tr>
            <tr>
                <td>John</td>
                <td>Doe</td>
                <td>John@example.com</td>
            </tr>
            <tr>
                <td>Jane</td>
                <td>Doe</td>
                <td>Jane@example.com</td>
            </tr>
            <tr>
                <td>Billy</td>
                <td>Bob</td>
                <td>Billy@example.com</td>
            </tr>
            <tr>
                <td>Bobby</td>
                <td>Axlerod</td>
                <td>Bobby@axecapital.com</td>
            </tr>
        </tbody>
    </table>
</body>
</html>
<script src="https://code.jquery.com/jquery-1.12.2.min.js" integrity="sha256-lZFHibXzMHo3GGeehn1hudTAP3Sc0uKXBXAzHX1sjtk=" crossorigin="anonymous"></script>
<script src="http://cdn.datatables.net/1.10.11/js/jquery.dataTables.min.js"></script>
<script src="js/dataTables.cellEdit.js"></script>
<script src="js/advance.js"></script>