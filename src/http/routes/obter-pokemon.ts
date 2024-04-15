import { FastifyInstance, FastifyRequest } from 'fastify';
import { PrismaClient } from '@prisma/client';
import z from 'zod';

const prisma = new PrismaClient();

export async function obterPokemons(app: FastifyInstance) {

  app.get('/obterPokemon/:name', async (request, reply) => {

    try {
      const obterNome = z.object({
        name: z.string()
      })

      const { name } = obterNome.parse(request.params)

      const obterPokemon = await prisma.modelo.findMany({
        where: {
          name: { contains: name
          }
        }
      })

      reply.code(200).send(obterPokemon);
      
    } catch (error) {
      console.error('Erro ao carregar os dados:', error);
      reply.code(500).send('Erro ao carregar os dados.');
    }
  });
}
