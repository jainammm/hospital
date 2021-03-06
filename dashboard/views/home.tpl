
{{ template "header" .}}
    
    <div class="container">
        <br>
        <table class="table table-dark">
            <thead>
            <tr>
                <th scope="col">Alert Type</th>
                <th scope="col">Script</th>
                <th scope="col">Action</th>
            </tr>
            </thead>
            <tbody>
                {{range .Maps}}
                    <tr>
                        <td>{{.AlertType}}</td>
                        <td>{{.Script}}</td>
                        <td>
                            <a href="/dashboard/remove/{{.AlertType}}">
                                <i class="fa fa-times" style="color:red" aria-hidden="true">
                            </i></a>
                        </td>
                    </tr>
                {{end}}
            </tbody>
        </table>
    </div>

    <!-- The Modal -->
    <div class="modal" id="myModal">
        <div class="modal-dialog">
          <div class="modal-content">
      
            <!-- Modal Header -->
            <div class="modal-header">
              <h4 class="modal-title">Add Mapping</h4>
              <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
      
            <!-- Modal body -->
            <div class="modal-body">
                    <form action="/dashboard/insert" method="POST" >
                            <div class="form-group">
                              <label for="insertAlertType">Alert Type</label>
                              <input type="text" name="alert" class="form-control" id="insertAlertType" placeholder="Enter alert">
                              </div>
                            <div class="form-group">
                              <label for="InsertScript">Script</label>
                              <input type="text" name="script" class="form-control" id="InsertScript" placeholder="script">
                            </div>
                            <button type="submit" class="btn btn-primary">Add</button>
                    </form>
            </div>
      
            <!-- Modal footer -->
            <div class="modal-footer">
              <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
            </div>
      
          </div>
        </div>
      </div>
    

  {{ template "footer" .}}