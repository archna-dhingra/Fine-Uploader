<html>
<head>
	<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
	<script type="text/javascript" src="${resource(dir:'js', file:'fineuploader.js')}"></script>
	<link rel="stylesheet" type="text/css" href="${resource(dir:'css', file:'fineuploader.css')}">
	
	<script>
	    $(document).ready(function() {
	        createSampleUploader();
	    });
	    
	    function createSampleUploader() {
	        var uploader = new qq.FineUploader({
	            element: document.getElementById('fine-uploader'),
	            text: {
	                uploadButton: 'Upload' //change this to the text you want on upload button
	            },
	            request: {
	                endpoint: 'server/handleUploads'   //server url
	            },
	            multiple: false,    //restrict to one file upload/selection at once
	            validation: {
	                allowedExtensions: ['jpg','jpeg','png','gif','bmp'],  //file types which can be uploaded
	                sizeLimit: 256000 // 250 kB = 250 * 1024 bytes
	            },
	            callbacks: {
	                onComplete: function(id, fileName, responseJSON) {
	                   //write here what you want to do after uploading the file
	                }
	            }
	        });
	    }
	</script>
</head>
<body>
	<label title="Fine-Uploader">Fine-Uploader Button</label>
	<div id="fine-uploader"></div>
</body>
</html>