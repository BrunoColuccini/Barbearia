const servico = require('../models/servico');
const barbeiro = require('../models/barbeiro');


const home = (req, res) => {
    servico.getAll((erro, servicos) => {
        if (erro) return res.status(500).send('Erro ao buscar serviços.');
        res.render('index', { servicos });
    });
};


const detalhes = (req, res) => {
    const id = req.params.id;
    servico.getById(id, (erro, servico) => {
        if (erro) return res.status(500).send('Erro ao buscar serviço.');
        if (!servico) return res.status(404).send('Serviço não encontrado.');

        barbeiro.getByServico(id, (erro, barbeiros) => {
            if (erro) return res.status(500).send('Erro ao buscar barbeiros.');
            res.render('detalhes', { servico, barbeiros });
        });
    });
};


const sobre = (req, res) => {
    barbeiro.getAll((erro, barbeiros) => {
        if (erro) return res.status(500).send('Erro ao buscar barbeiros.');
        res.render('sobre', { barbeiros });
    });
};


module.exports = { home, detalhes, sobre };