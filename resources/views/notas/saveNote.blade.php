<h1>Crear una Nota</h1>
<br>
<a href="{{ url('/notas')}}">Volver al listado</a><br><br>
<form action="{{route('notas.store')}}" method="POST">
@csrf
    <input type="text" name="tittle" placeholder="Titulo de la nota" value=""/><br><br>
    <textarea name="description" palceholder="Descripcion de la nota"></textarea><br><br>
    <input type="submit" value="Guardar Nota"/><br><br>
</form>