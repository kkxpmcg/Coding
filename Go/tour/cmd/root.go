package main

import "github.com/spf13/cobra"

var rootcmd = &cobra.Command{}

func Execute() error {
	return rootcmd.Execute()
}

func init() {
	rootcmd.AddCommand(worldCmd)
}
