class Uf < ApplicationRecord
    def self.uf_data

        #guardar en una variable un objeto de tipo File
        file = File.open('tmp/UF 2019.csv') 
        #quitar salto de línea y guardar array en una variable
        data = file.readlines.map(&:chomp)
        #depurar data y convertirlos a objetos del modelo
        data.each_with_index do |row, index|
            next if index.zero?
            col = row.split(",")
            #crear valores para enero
            Uf.create(date: "2019/01/#{col[0]}", uf_value: col[1])
            #crear valores para febrero
            if index < 29
                Uf.create(date: "2019/02/#{col[0]}", uf_value: col[2])        
            end
        end
    end
end
