#encoding: utf-8
#!/usr/bin/env ruby

class ComentarioApi

    # Remove o comentário inserido
    # Params:
    # +id+:: ID da mensagem
    def remover(id)
        time_start = Time.now

        response = HTTParty.delete($DATA_URLS['teste'] + "/posts/" + id.to_s,
            :headers => {
                'Content-Type' => 'application/json',
                'Connection' => 'keep-alive',
            }
        )
        time_finish = Time.now

        Utils.time_diff(time_start, time_finish)

        return response
    end


    # Cria um comentário
    def criar
        time_start = Time.now

        response = HTTParty.post($DATA_URLS['teste'] + "/posts",
            :headers => {
                'Connection' => 'keep-alive',
                'Content-Type' => 'application/json'
            },
            :data => {
                name: "Depoimento na Lava Jato",
                email: "astato@santander.com.br",
                body: "Os depoimentos de hoje são os últimos desta fase do processo. Agora, as defesas devem solicitar diligências complementares e, em seguida, Moro deve determinar um prazo para as alegações finais e então determinar a sentença."
            }
        )

        time_finish = Time.now

        Utils.time_diff(time_start, time_finish)

        return response
    end
end
