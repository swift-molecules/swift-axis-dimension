import Dimension_Axis
import Testing

@Suite
struct `Axis.Depth - 3D Typealias` {

    @Test
    func `Axis3 Depth is identical to Depth`() {
        #expect(Axis<3>.Depth.backward == Depth.backward)
        #expect(Axis<3>.Depth.backward.opposite == Depth.backward.opposite)
    }

    @Test
    func `All Depth functionality available via Axis3 Depth`() {
        #expect(Axis<3>.Depth.forward.opposite == Depth.forward.opposite)
        #expect(Axis<3>.Depth.forward.isForward == Depth.forward.isForward)
        #expect(Axis<3>.Depth.forward.isBackward == Depth.forward.isBackward)
        #expect(Axis<3>.Depth.backward.opposite == Depth.backward.opposite)
        #expect(Axis<3>.Depth.backward.isForward == Depth.backward.isForward)
        #expect(Axis<3>.Depth.backward.isBackward == Depth.backward.isBackward)
    }

    @Test
    func `Depth available for 3D`() {

        _ = Axis<3>.Depth.forward
    }
}
