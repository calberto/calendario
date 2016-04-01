class Evento < ActiveRecord::Base
  belongs_to :disciplina
  belongs_to :mestre
  belongs_to :studio
  validates_presence_of :data, :message => "Data deve ser preenchdida"
  validates_presence_of :hora_inicial, :message => "hora inicial deve ser informada"
  validates_presence_of :hora_final, :message => "hora final deve ser informada"  	
end
