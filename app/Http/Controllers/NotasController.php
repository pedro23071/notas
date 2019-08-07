<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class NotasController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //conseguir todas las notas
        $notes = DB::table('notes')->orderBy('id','desc')->get();

        return view('notas.index',array( 
            "notes" => $notes
        ));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        return view('notas.saveNote');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //Insertar un anota
        $note = DB::table('notes')->insert(array(
            'tittle' => $request->input('tittle'),
            'description' => $request->input('description')
        ));
        return redirect('/notas')->with('success', 'Nota guardada correctamente!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //Conseguir una nota en concreto
        $note = DB::table('notes')->select('id','tittle','description')->where('id',$id)->first();
        if (empty($note)) {
            return redirect()->action('NotasController@index');
        }else {
            return view('notas.note',array( 
                "note" => $note
            ));
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //regresamos la vista de editar
        $note = DB::table('notes')->where('id',$id)->first();
        return view('notas.updateNote',array(
            'note' => $note
        ));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //modificar una nota
        $note = DB::table('notes')->select('tittle','description')->where('id',$id)->update(array(
            'tittle' => $request->input('tittle'),
            'description' => $request->input('description')
        ));
        return redirect('/notas')->with('success', 'Nota Actualizada correctamente!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
         //Eliminar una nota concreta
         $note = DB::table('notes')->select('id','tittle','description')->where('id',$id)->delete();

             return redirect()->action('NotasController@index')->with('success', 'Nota Borrada correctamente');
    }
}
