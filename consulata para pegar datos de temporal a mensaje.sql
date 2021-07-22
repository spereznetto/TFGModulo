gps_efip

Descripcion
idEstadoUsuario

idTipoUsuario


SELECT idMensaje,MensajeIdTemporal,MensajetipoMensaje,MensajeIMEI,UsuarioFinalNombre,MensajeFechaHora,MensajeAlertaEstado FROM mensajehistorico a
INNER JOIN asigaciondipositivousuario b ON a.MensajeIMEI = b.AsignacionIMEI
INNER JOIN usuariofinal c ON c.idUsuarioFinal = b.AsignacionIdUsuarioFinal
ORDER BY MensajeFechaHora DESC
mensajehistorico

INSERT INTO mensajehistorico(MensajeidAsignacion,MensajeIdTemporal,MensajeFechaHora,MensajetipoMensaje,MensajeIMEI,MensajeCompleto)

SELECT idAsignacion, idreporte,LEFT(Temporal_fechagps,10) AS fecha,
(CASE
    WHEN Temporal_Evento = 'ALARMA' THEN '2'
    WHEN Temporal_Evento = 'POSICION' THEN '1'
    ELSE '0'
END) AS evento,Temporal_IdDispositivo,Temporal_Completo
FROM temporal_9001
INNER JOIN asigaciondipositivousuario ON AsignacionIMEI = Temporal_IdDispositivo
WHERE temporal_evento = 'ALARMA'
AND Temporal_IdDispositivo IN (86811,86810)
GROUP BY LEFT(Temporal_fechagps,10),Temporal_IdDispositivo

