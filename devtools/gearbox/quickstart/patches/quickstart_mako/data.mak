<%inherit file="local:templates.master"/>

<%def name="title()">
  Welcome to TurboGears 2.4, standing on the shoulders of giants, since 2007
</%def>

  <div class="row">
    <div class="col-md-6">
      <h2>Content Type Dispatch</h2>
        <p>
          This page shows how you can provide multiple pages
          directly from the same controller method.  This page is generated
          from the expose decorator with the template defintion provided.
          You can provide a url with parameters and this page will display
          the parameters as html, and the json version will express
          the entries as <code>JSON</code>.
        </p>

        <p>Click here for the <a href="${tg.url('/data.json', params=params)}">JSON Version of this page.</a></p>
    </div>
    <div class="col-md-6">
      <p>The data provided in the template call is:
        <table class="table table-bordered table-striped">
          <thead>
            <tr>
              <th>Key</th>
              <th>Value</th>
            </tr>
          </thead>
          <tbody>
            %for key, value in params.items():
                <tr>
                    <td>${key}</td>
                    <td>${value}</td>
                </tr>
            %endfor
          </tbody>
        </table>
      </p>
    </div>
  </div>
