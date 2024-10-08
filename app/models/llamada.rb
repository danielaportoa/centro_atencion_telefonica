class Llamada < ApplicationRecord
  belongs_to :cliente
  
  enum motivo: { requerimiento: 'Requerimiento', reclamo: 'Reclamo', consulta: 'Consulta' }
end
