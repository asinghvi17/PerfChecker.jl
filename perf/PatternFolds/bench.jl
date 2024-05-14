using PerfChecker, BenchmarkTools

t = @check :benchmark Dict(:path => @__DIR__, :evals => 1, :samples => 100, :seconds => 100) begin
    using PatternFolds
end begin
    # Intervals
    itv = Interval{Open, Closed}(0.0, 1.0)
    i = IntervalsFold(itv, 2.0, 1000)

    unfold(i)
    collect(i)
    reverse(collect(i))

    # rand(i, 1000)

    # Vectors
    vf = make_vector_fold([0, 1], 2, 1000)
    # @info "Checking VectorFold" vf pattern(vf) gap(vf) folds (vf) length(vf)

    unfold(vf)
    collect(vf)
    reverse(collect(vf))

    rand(vf, 1000)

    return nothing
end

@info t
