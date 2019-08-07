<h1>Actualizar nota</h1>
<br>
<a href="{{ url('/notas')}}">Volver al listado</a><br><br>
<form action="{{ route('notas.update', $note->id) }}" method="POST">
@method('PATCH')
@csrf
    <input type="text" name="tittle" value="{{ $note->tittle }}"/><br><br>
    <textarea name="description"> {{ $note->description }}</textarea><br><br>
    <input type="submit" value="Guardar Nota"/><br><br>
</form>