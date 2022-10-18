const { Router }=require('express');
const router = Router();
const pool = require("../../db");
const cors=require('cors');

router.get('/',(req,res) =>{
    res.json({"Title":"hola"});
})

// home de cartas
router.get('/home', async(req, res) => {
    const data= await pool.query("Select * FROM cards")
    res.json(data.rows);
});


//ver una carta
router.post('/commit', async (req,res) =>{
    const {id_carta}=req.body;
    const data= await pool.query("Select * FROM cards where id_carta=$1", [id_carta])
    res.json(data.rows);
})

// comentarios de carta
router.post('/commit2', async (req,res) =>{
    const {id_carta}=req.body;
    const data= await pool.query("SELECT c.id_comentario,u.usuario,c.comentario FROM usuarios AS u INNER JOIN comment as c ON u.id_user=c.id_user where c.id_carta=$1", [id_carta])
    res.json(data.rows);
})

// insertar COMENTARIO
router.post('/writecommit', async (req,res) =>{
    const {id_carta, user, commit}=req.body;
    const data= await pool.query("INSERT INTO comment(id_user,id_carta,comentario) VALUES ($1,$2,$3)", [user,id_carta,commit])
    res.json({
        status:1
    });
})

//ELIMINAR COMENTARIO
router.delete('/borrar', async (req,res) =>{
    const {idcommit}=req.body;
    const data= await pool.query("DELETE FROM comment WHERE id_comentario=$1",[idcommit])
    res.json({
        status:1
    });
})

// EDITAR COMENTARIO
router.put('/editar', async (req,res) =>{
    const {idcommit,commit}=req.body;
    const data= await pool.query("UPDATE comment SET comentario=$2 WHERE id_comentario=$1 ",[idcommit,commit])
    res.json({
        status:1
    });
})

//LOGIN
router.post('/login', async(req,res) =>{
    const {user, pass}=req.body;
    const getUser= await pool.query("SELECT id_user FROM usuarios where usuario = $1 AND clave = $2", [user, pass]);
    if( getUser.rows.length){
        res.json({
            status:1,
            token:getUser.rows[0].id_usuario
        })
        return
    }else{
        res.json({
            status:0
        })
        return;
    }
});

module.exports = router;