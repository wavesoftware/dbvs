package messages_test

import (
	"testing"

	"github.com/wavesoftware/dbvs/internal/messages"
)

func TestHello(t *testing.T) {
	got := messages.Hello

	if got != "World" {
		t.Errorf("Hello should be World, was %v", got)
	}
}
