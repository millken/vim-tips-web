<script type="text/javascript">
var sock = null;
var wsuri = "ws://127.0.0.1:3001/ws";

try
{
	sock = new WebSocket(wsuri);
}catch (e) {
}

sock.onopen = function() {
	console.log("connected to " + wsuri);
}

sock.onerror = function(e) {
	console.log(" error from connect " + e);
}

sock.onclose = function(e) {
	console.log("connection closed (" + e.code + ")");
}

sock.onmessage = function(e) {
	console.log("message received: " + e.data);

	$("#msg").text(e.data)
}

</script>

<div class="row">
	<div id="msg">
	</div>
</div>