defmodule ElixirTeste.EscreveNumeroAleatorioTest do
    use ExUnit.Case

    test "2 escritas no arquivo geram números diferentes" do
        ElixirTeste.EscreveNumeroAleatorio.escreve

        primeiro_conteudo = File.read!(Path.join([
            :code.priv_dir(:elixir_teste),
            'arquivo.txt'
        ]))

        ElixirTeste.EscreveNumeroAleatorio.escreve
        
        segundo_conteudo = File.read!(Path.join([
            :code.priv_dir(:elixir_teste),
            'arquivo.txt'
        ]))

        assert primeiro_conteudo != segundo_conteudo
    end
end