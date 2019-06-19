package report

import (
	"hospital/storage"
)

func statusReporter(reportReq reportRequest) error {
	err := storage.ReportStatus(reportReq.ID, reportReq.Status, reportReq.Logs)
	return err
}
