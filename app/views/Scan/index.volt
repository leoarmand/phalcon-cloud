	<div class="filemanager">
		<div class="breadcrumbs"></div>
		<ul class="nav nav-tabs" id="tabsMenu">
		  <li role="presentation" class="active"><a href="#Home" aria-controls="Home" role="tab" data-toggle="tab">Home</a></li>
		  <li role="presentation"><a href="#Listing" aria-controls="Listing" role="tab" data-toggle="tab">Listing</a></li>
		  <li role="presentation"><a href="#Upload" aria-controls="Upload" role="tab" data-toggle="tab">Upload</a></li>
		</ul>
		<div class="tab-content">
			<div role="tabpanel" class="tab-pane active" id="Home">
				<!--
				//TODO 4.3 implémenter à partir de DisqueController/indexAction
				-->
			</div>
			<div role="tabpanel" class="tab-pane" id="Listing">
				<div class="btn-toolbar">
					<div class="btn-group" role="group">
						<a class="btn btn-primary" id="btUpload">
							<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
							Ajouter des fichiers
						</a>
						<a class="btn btn-primary" id="btFrmCreateFolder">
							<span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
							Créer un dossier
						</a>
					</div>
					<div class="btn-group">
						<label>
							<input type="checkbox" id="ckSelectAll"/>&nbsp;(dé)Sélectionner tout
						</label>
					</div>
					<div class="btn-group">
						<input type="search" class="form-control" placeholder="Find a file.." />
					</div>
					<div class="btn-group" role="group">
						<a class="btn btn-warning" id="btDelete" style="display:none">
							<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
							Supprimer le(s) fichier(s)</a>
					</div>
				</div>
				<div class="panel panel-default" id="panelCreateFolder" style="display:none">
					<div class="panel-body">
						<form class="form-inline" name="frmCreateFolder" id="frmCreateFolder">
							<div class="form-group">
								<input type="hidden" name="activeFolder" id="parentFolder">
								<label>Nom : <input type="text" class="form-control" placeholder="nom du dossier..." name="folderName" id="folderName"/></label>
								<a class="btn btn-primary" id="btCreateFolder">
									<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
									Créer le dossier
								</a>
							</div>
						</form>
					</div>
				</div>
				<div class="panel panel-default" id="panelConfirmDelete" style="display:none">
					<div class="panel-body">
						<form class="form-inline" name="frmDelete" id="frmDelete">
							<div class="form-group">
								<input type="hidden" name="activeFolder" id="parentFolder">
								<label>Supprimer le(s) éléments ?</label>
								<a class="btn btn-danger" id="btConfirmDelete">
									<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
									Supprimer
								</a>
							</div>
						</form>
					</div>
				</div>
				<ul class="data"></ul>

				<div class="nothingfound">
					<div class="nofiles"></div>
					<span>Aucun élément.</span>
				</div>
			</div>
			<div role="tabpanel" class="tab-pane" id="Upload">
				<form id="upload" method="post" action="scan/upload" enctype="multipart/form-data">
					<div id="drop">
						Déposez vos fichiers
						<a class="btn btn-primary">Parcourir...</a>
						<input type="file" name="upl" multiple />
					</div>
					<input type="hidden" name="activeFolder" id="activeFolder">
					<ul>
						<!-- The file uploads will be shown here -->
					</ul>
				</form>
			</div>
		</div>
	</div>
	<input type="hidden" name="rootFolder" id="rootFolder">

<div id="ajaxResponse"></div>
<!--
	//TODO 4.3 .btClose bouton de fermeture
 -->
{{ javascript_include("js/jquery-file-upload/jquery.knob.js") }}
<!-- jQuery File Upload Dependencies -->
{{ javascript_include("js/jquery-file-upload/jquery.ui.widget.js") }}
{{ javascript_include("js/jquery-file-upload/jquery.iframe-transport.js") }}
{{ javascript_include("js/jquery-file-upload/jquery.fileupload.js") }}

{{ javascript_include("js/jquery-file-upload/script.js") }}
{{ script_foot }}