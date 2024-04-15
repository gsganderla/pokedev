import { FastifyInstance, FastifyRequest } from 'fastify';
import { PrismaClient } from '@prisma/client';
import { Pokemon } from '../entity/modelo';

const prisma = new PrismaClient();

export async function carregarDataSet(app: FastifyInstance) {
  app.post('/carregarDataSet', async (request, reply) => {
    try {
      const modelo: Pokemon[] = request.body as Pokemon[];
      
      const InserirDataSet = await prisma.modelo.createMany({
          data: modelo
      })

      reply.code(200).send('Dados carregados com sucesso!');
    } catch (error) {
      console.error('Erro ao carregar os dados:', error);
      reply.code(500).send('Erro ao carregar os dados.');
    }
  });
}
