{{ template "header" .}}

<div class="container">
        <br>
        <table class="table table-dark">
            <thead>
            <tr>
                <th scope="col">Application ID</th>
                <th scope="col">Script</th>
                <th scope="col">Status</th>
                <th scope="col">Logs</th>
            </tr>
            </thead>
            <tbody>
                {{range .Logs}}
                    <tr>
                        <td><a href="/dashboard/summary/{{.ApplicationID}}">{{.ApplicationID}}</a></td>
                        <td>{{.Script}}</td>
                        {{if eq .Status "completed"}}
                            <td><i class="fa fa-check-circle" style="color:green"></i> {{.Status}}</td>
                        {{else if eq .Status "failed"}}
                            <td><i class="fa fa-times-circle" style="color:red"></i> {{.Status}}</td>
                        {{else}}
                            <td><i class="fa fa-free-code-camp" style="color:yellow"></i> {{.Status}}</td>
                        {{end}}
                        <td><a href="/dashboard/logs/{{.ID}}">{{.Logs}}</a></td>
                    </tr>
                {{end}}
            </tbody>
        </table>
</div>

{{ template "footer" .}}