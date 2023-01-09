#encoding: utf-8

class PesquisaPage

    def visit_google
        $driver.find_element(name: 'q')
    end

    def pesquisa(pesquisa)
        case pesquisa
        when "Concert Technologies"
            $driver.find_element(name: 'q').send_keys(pesquisa)
            sleep 2
            $driver.find_element(name: 'q').submit
        when "Sport"
            $driver.find_element(name: 'q').send_keys(pesquisa)
            sleep 2
            $driver.find_element(name: 'q').submit
        else 
            puts "Favor informar uma opção correta!"
        end
    end
    
    def valida_pesquisa(pesquisa)
        case pesquisa
        when "Concert Technologies"
            text_exists?('CONCERT Technologies - LinkedIn')
        when "Sport"
            text_exists?('Sport Club do Recife')
        else 
            puts "Favor informar uma opção correta!"
        end
    end

end