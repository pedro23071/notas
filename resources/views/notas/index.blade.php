<h1  style="color: balck; text-align: center; font-size: 3rem;">Aplicacion de notas</h1>

@if(session()->get('success'))
    <div class="alert alert-success" style=" width :500px; height:60px; background-color:red; padding-top: 5px; color: white; text-align: center; font-size: 2rem;">
      {{ session()->get('success') }}  
    </div>
  @endif

<h3  style="color: black; text-align: left; font-size: 2rem;">listado de notas</h3>
<a href="{{ url('/notas/create')}}">Crear nota</a>
<div class="cont" style="margin-left: 200px">
    <table>
        <tr>
            <th style="text-align: left; width: 200px;">Titulo de las Notas</th>
        </tr>
    @foreach ($notes as $note)
        <tr>
            <td  style="text-align: left; width: 200px;">{{$note->tittle}}</td>
            <td><a href="{{ url('/notas/' . $note->id)}}">Ver</td>
            <td>
                <form action="{{ route('notas.destroy', $note->id)}}" method="post">
                    @csrf
                    @method('DELETE')
                    <button class="btn btn-danger" type="submit">Eliminar</button>
                </form>
            </td>
            <td>
                <form action="{{ route('notas.edit', $note->id)}}" method="GET">
                    @csrf
                    <button class="btn btn-danger" type="submit">Editar</button>
                </form>
            </td>

        </tr>
    @endforeach
    </table>
</div>
