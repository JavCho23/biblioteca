<?php

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

$app->get('/api/bibliotecas', function () {
    try {
        $bibliotecas = $this->db->query("SELECT id_biblioteca,nombre FROM biblioteca")->fetchAll();
        if ($bibliotecas) {

            $result = array('estado' => true, 'data' => $bibliotecas);
            echo json_encode($result);
        } else {
            echo json_encode(array('estado' => false, 'mensaje' => 'No se han encontrado bibliotecas'));
        }
    } catch (PDOException $e) {
        echo json_encode(array('estado' => false, 'mensaje' => 'Error al conectar con la base de datos'));
    }
});

$app->post('/api/bibliotecas/add', function (Request $request) {
    $nombre = $request->getParam('nombre');
    try {
        $cantidad = $this->db->exec("INSERT INTO biblioteca(nombre) 
                                    Values('$nombre')");

        if ($cantidad > 0) {
            echo json_encode(array('estado' => true, 'mensaje' => 'Biblioteca registrada correctamente'));
        } else {
            echo json_encode(array('estado' => false, 'mensaje' => 'No se pudo registrar la Biblioteca'));
        }
    } catch (PDOException $e) {
        echo json_encode(array('estado' => false, 'mensaje' => 'Error al conectar con la base de datos'));
    }
});

$app->put('/api/bibliotecas/{id}', function (Request $request) {
    $id = $request->getAttribute('id');
    $nombre = $request->getParam('nombre');
    try {
        $cantidad = $this->db->exec("UPDATE biblioteca SET
                                    nombre = '$nombre'
                                    WHERE id_biblioteca = $id");

        if ($cantidad > 0) {
            echo json_encode(array('estado' => true, 'mensaje' => 'Biblioteca actualizada correctamente'));
        } else {
            echo json_encode(array('estado' => false, 'mensaje' => 'No se pudo actualizar la Biblioteca'));
        }
    } catch (PDOException $e) {
        echo json_encode(array('estado' => false, 'mensaje' => 'Error al conectar con la base de datos'));
    }
});

$app->delete('/api/bibliotecas/{id}', function (Request $request) {
    $id = $request->getAttribute('id');
    try {
        $cantidad = $this->db->exec("DELETE FROM biblioteca 
                                    WHERE id_biblioteca = $id");

        if ($cantidad > 0) {
            echo json_encode(array('estado' => true, 'mensaje' => 'Biblioteca eliminada correctamente'));
        } else {
            echo json_encode(array('estado' => false, 'mensaje' => 'No se pudo eliminar la Biblioteca'));
        }
    } catch (PDOException $e) {
        echo json_encode(array('estado' => false, 'mensaje' => 'Error al conectar con la base de datos'));
    }
});
