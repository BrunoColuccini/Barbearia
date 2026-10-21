const db = require('../db');

const getAll = (callback) => {
    db.query('SELECT * FROM barbeiros ORDER BY nome', callback);
};


const getByServico = (servicoId, callback) => {
    db.query(
        `SELECT barbeiros.*
         FROM barbeiros
         JOIN barbeiro_servico ON barbeiro_servico.barbeiro_id = barbeiros.id
         WHERE barbeiro_servico.servico_id = ?
         ORDER BY barbeiros.nome`,
        [servicoId],
        callback
    );
};


module.exports = { getAll, getByServico };