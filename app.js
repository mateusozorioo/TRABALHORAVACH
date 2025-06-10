const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

// Rota principal
app.get('/', (req, res) => {
    res.json({
        message: 'Hello World!',
        timestamp: new Date().toISOString(),
        version: '1.0.0'
    });
});

// Rota de health check (útil para monitoramento)
app.get('/health', (req, res) => {
    res.json({ status: 'OK', uptime: process.uptime() });
});

app.listen(PORT, () => {
    console.log(`Servidor rodando na porta ${PORT}`);
});