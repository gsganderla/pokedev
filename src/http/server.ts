import { fastify } from "fastify";
import { carregarDataSet } from "./routes/incluir-data-set";
import { obterDataSet } from "./routes/obter-data-set";
import { obterPokemons } from "./routes/obter-pokemon";

const app = fastify()

app.register(obterPokemons);
app.register(obterDataSet);
app.register(carregarDataSet);

app.listen({ port: 3333 }).then(() => {
    console.log('Server online.')
})


