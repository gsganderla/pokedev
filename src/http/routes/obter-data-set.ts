import { FastifyInstance, FastifyRequest } from 'fastify';
import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();

export async function obterDataSet(app: FastifyInstance) {
  app.get('/obterDataSet', async (request, reply) => {
    try {

    const listaDataSet = await prisma.modelo.findMany({
    })

      reply.code(200).send(listaDataSet);
      
    } catch (error) {
      console.error('Erro ao carregar os dados:', error);
      reply.code(500).send('Erro ao carregar os dados.');
    }
  });
}
